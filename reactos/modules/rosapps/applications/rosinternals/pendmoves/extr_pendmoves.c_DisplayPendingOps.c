
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef int DWORD ;


 scalar_t__* BeautifyPath (scalar_t__*,int*) ;
 scalar_t__ GetFileAttributes (scalar_t__*) ;
 scalar_t__* GetLastError () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 scalar_t__* _T (char*) ;
 int _ftprintf (int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ _tcslen (scalar_t__*) ;
 int stdout ;

__attribute__((used)) static
DWORD
DisplayPendingOps(TCHAR * Value, DWORD Len)
{
    DWORD Chars, i, j, Count, SrcLen, TgtLen;
    TCHAR * SrcFile, * Target, * Current;




    Chars = Len / sizeof(TCHAR);

    i = 0;
    Count = 0;
    Current = Value;

    while (i < Chars)
    {

        for (j = i; j < Chars && Value[j] != 0; ++j);

        SrcLen = _tcslen(Current);
        SrcFile = BeautifyPath(Current, &SrcLen);

        if (SrcLen == 0)
        {
            break;
        }


        i = j;
        ++i;

        Current = Value + i;


        for (j = i; j < Chars && Value[j] != 0; ++j);

        TgtLen = _tcslen(Current);
        Target = BeautifyPath(Current, &TgtLen);

        i = j;
        ++i;
        Current = Value + i;


        _ftprintf(stdout, _T("Source: %s\n"), SrcFile);

        if (GetFileAttributes(SrcFile) == INVALID_FILE_ATTRIBUTES)
        {
            _ftprintf(stdout, _T("\t *** Source file lookup error: %d\n"), GetLastError());
        }

        _ftprintf(stdout, _T("Target: %s\n\n"), (_tcslen(Target) != 0 ? Target: _T("DELETE")));


        Current = Value + i;
        ++Count;
    }

    return Count;
}
