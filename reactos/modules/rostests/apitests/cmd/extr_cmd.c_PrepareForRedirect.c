
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sa ;
struct TYPE_6__ {int member_0; int member_2; int * member_1; } ;
struct TYPE_5__ {int * hStdError; int * hStdOutput; int * hStdInput; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef scalar_t__ PHANDLE ;
typedef void* HANDLE ;
typedef int BOOL ;


 int CloseHandle (void*) ;
 scalar_t__ CreatePipe (void**,void**,TYPE_2__*,int ) ;
 int FALSE ;
 int MyDuplicateHandle (void*,scalar_t__,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL PrepareForRedirect(STARTUPINFOA *psi, PHANDLE phInputWrite,
                               PHANDLE phOutputRead, PHANDLE phErrorRead)
{
    HANDLE hInputRead = ((void*)0), hInputWriteTmp = ((void*)0);
    HANDLE hOutputReadTmp = ((void*)0), hOutputWrite = ((void*)0);
    HANDLE hErrorReadTmp = ((void*)0), hErrorWrite = ((void*)0);
    SECURITY_ATTRIBUTES sa = { sizeof(sa), ((void*)0), TRUE };

    psi->hStdInput = ((void*)0);
    psi->hStdOutput = ((void*)0);
    psi->hStdError = ((void*)0);

    if (phInputWrite)
    {
        if (CreatePipe(&hInputRead, &hInputWriteTmp, &sa, 0))
        {
            if (!MyDuplicateHandle(hInputWriteTmp, phInputWrite, FALSE))
                goto failed;

            CloseHandle(hInputWriteTmp);
        }
        else
            goto failed;
    }

    if (phOutputRead)
    {
        if (CreatePipe(&hOutputReadTmp, &hOutputWrite, &sa, 0))
        {
            if (!MyDuplicateHandle(hOutputReadTmp, phOutputRead, FALSE))
                goto failed;

            CloseHandle(hOutputReadTmp);
        }
        else
            goto failed;
    }

    if (phOutputRead && phOutputRead == phErrorRead)
    {
        if (!MyDuplicateHandle(hOutputWrite, &hErrorWrite, TRUE))
            goto failed;
    }
    else if (phErrorRead)
    {
        if (CreatePipe(&hErrorReadTmp, &hErrorWrite, &sa, 0))
        {
            if (!MyDuplicateHandle(hErrorReadTmp, phErrorRead, FALSE))
                goto failed;
            CloseHandle(hErrorReadTmp);
        }
        else
            goto failed;
    }

    if (phInputWrite)
        psi->hStdInput = hInputRead;
    if (phOutputRead)
        psi->hStdOutput = hOutputWrite;
    if (phErrorRead)
        psi->hStdError = hErrorWrite;

    return TRUE;

failed:
    CloseHandle(hInputRead);
    CloseHandle(hInputWriteTmp);
    CloseHandle(hOutputReadTmp);
    CloseHandle(hOutputWrite);
    CloseHandle(hErrorReadTmp);
    CloseHandle(hErrorWrite);
    return FALSE;
}
