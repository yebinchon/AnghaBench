
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _TCHAR ;
typedef size_t DWORD ;


 int ENOMEM ;
 int ERANGE ;
 size_t GetFullPathName (scalar_t__ const*,size_t,scalar_t__*,scalar_t__**) ;
 int GetLastError () ;
 size_t MAX_PATH ;
 int _dosmaperr (int ) ;
 scalar_t__* _tgetcwd (scalar_t__*,size_t) ;
 int errno ;
 int free (scalar_t__*) ;
 scalar_t__* malloc (size_t) ;

_TCHAR* _tfullpath(_TCHAR* absPath, const _TCHAR* relPath, size_t maxLength)
{
    _TCHAR* lpBuffer;
    _TCHAR* lpFilePart;
    DWORD retval;


    if (!relPath || relPath[0] == 0)
    {

        return _tgetcwd(absPath, maxLength);
    }


    if (!absPath)
    {

        maxLength = MAX_PATH;
        lpBuffer = malloc(maxLength);
        if (!lpBuffer)
        {
            errno = ENOMEM;
            return ((void*)0);
        }
    }
    else
    {
        lpBuffer = absPath;
    }


    retval = GetFullPathName(relPath, (DWORD)maxLength, lpBuffer, &lpFilePart);

    if (retval > maxLength)
    {

        if (!absPath)
        {
            free(lpBuffer);
        }

        errno = ERANGE;
        return ((void*)0);
    }
    else if (!retval)
    {

        if (!absPath)
        {
            free(lpBuffer);
        }

        _dosmaperr(GetLastError());
        return ((void*)0);
    }


    return lpBuffer;
}
