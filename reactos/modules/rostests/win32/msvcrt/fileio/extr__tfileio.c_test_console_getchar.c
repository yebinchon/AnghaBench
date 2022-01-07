
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;


 int _T (char*) ;
 int _TEOF ;
 int _THEX_FORMAT ;
 int _gettc (int ) ;
 int _tprintf (int ,...) ;
 int stdin ;

__attribute__((used)) static int test_console_getchar(void)
{
    int result = 0;
    TCHAR ch;

    _tprintf(_T("Enter lines for dumping or <ctrl-z><nl> to finish:\n"));


    while ((ch = _gettc(stdin)) != _TEOF) {
        _tprintf(_THEX_FORMAT, ch);

    }
    return result;
}
