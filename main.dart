// refer to the Java code here:
// https://gist.github.com/rjlutz/3c26a1be877529de8dd28049d12415d0
// complete the dart implementation below to have the same functionality

class Palindrome {
  // TODO implement check
  static check(String s) {
    return _check(s, 0, s.length - 1);
  }

  static _check(String _s, int _start, int _end) {
    // base case
    if (_start >= _end) return true;

    // do some work
    while (!isLetterOrDigit(_s[_start], _start)) 
      _start++;
    while (!isLetterOrDigit(_s[_end], _end)) 
      _end--;
    var downcaseStart = _s[_start].toLowerCase;
    var downcaseEnd = _s[_end].toLowerCase;
    if (downcaseStart != downcaseEnd) return false;

    // call simpler version
    return _check(_s, (_start) + 1, _end - 1);
  }
}

// lambda to mimic Java's Character.isLetterOrDigit()
bool isLetterOrDigit(String s, int idx) =>
    s[idx].contains(RegExp(r'[\da-zA-Z]'));

main() {
  // should result in true,false,true,false,true,false

  print(Palindrome.check('radar'));
  print(Palindrome.check('raxdar'));

  print(Palindrome.check('noon'));
  print(Palindrome.check('nxoon'));

  print(Palindrome.check('Rise to vote, sir!'));
  print(Palindrome.check('Rise to xyz vote, sir!'));
}
