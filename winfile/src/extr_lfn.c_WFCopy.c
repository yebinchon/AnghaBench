
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * LPTSTR ;
typedef scalar_t__ DWORD ;


 int ChangeFileSystem (int ,int *,int *) ;
 scalar_t__ CopyFile (int *,int *,int ) ;
 scalar_t__ ERROR_INVALID_NAME ;
 int FALSE ;
 int FSC_CREATE ;
 scalar_t__ GetLastError () ;
 int IDS_COPYINGMSG ;
 int MAXPATHLEN ;
 int Notify (int ,int ,int *,int *) ;
 int RemoveLast (int *) ;
 int hdlgProgress ;
 int lstrcpy (int *,int *) ;

DWORD
WFCopy(LPTSTR pszFrom, LPTSTR pszTo)
{
    DWORD dwRet;
    TCHAR szTemp[MAXPATHLEN];

    Notify(hdlgProgress, IDS_COPYINGMSG, pszFrom, pszTo);

    if (CopyFile(pszFrom, pszTo, FALSE))
    {
        ChangeFileSystem(FSC_CREATE, pszTo, ((void*)0));
        dwRet = 0;
    }
    else
    {
        dwRet = GetLastError();
        if (dwRet == ERROR_INVALID_NAME)
        {






            lstrcpy(szTemp, pszTo);
            RemoveLast(szTemp);
            if (CopyFile(pszFrom, szTemp, FALSE))
            {
                ChangeFileSystem(FSC_CREATE, szTemp, ((void*)0));
                dwRet = 0;
            }


        }
    }

    return (dwRet);
}
