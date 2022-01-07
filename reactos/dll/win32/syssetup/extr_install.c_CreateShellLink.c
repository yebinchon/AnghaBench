
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int LPCWSTR ;
typedef int IShellLinkW ;
typedef int IPersistFile ;
typedef int INT ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ShellLink ;
 int CoCreateInstance (int *,int *,int ,int *,int *) ;
 int IID_IPersistFile ;
 int IID_IShellLink ;
 int IPersistFile_Release (int *) ;
 int IPersistFile_Save (int *,int ,int ) ;
 int IShellLinkW_QueryInterface (int *,int *,int *) ;
 int IShellLinkW_Release (int *) ;
 int IShellLinkW_SetArguments (int *,int ) ;
 int IShellLinkW_SetDescription (int *,int ) ;
 int IShellLinkW_SetIconLocation (int *,int ,int ) ;
 int IShellLinkW_SetPath (int *,int ) ;
 int IShellLinkW_SetWorkingDirectory (int *,int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;

__attribute__((used)) static HRESULT
CreateShellLink(
    LPCWSTR pszLinkPath,
    LPCWSTR pszCmd,
    LPCWSTR pszArg,
    LPCWSTR pszDir,
    LPCWSTR pszIconPath,
    INT iIconNr,
    LPCWSTR pszComment)
{
    IShellLinkW *psl;
    IPersistFile *ppf;

    HRESULT hr = CoCreateInstance(&CLSID_ShellLink, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IShellLink, (LPVOID*)&psl);

    if (SUCCEEDED(hr))
    {
        hr = IShellLinkW_SetPath(psl, pszCmd);

        if (pszArg)
            hr = IShellLinkW_SetArguments(psl, pszArg);

        if (pszDir)
            hr = IShellLinkW_SetWorkingDirectory(psl, pszDir);

        if (pszIconPath)
            hr = IShellLinkW_SetIconLocation(psl, pszIconPath, iIconNr);

        if (pszComment)
            hr = IShellLinkW_SetDescription(psl, pszComment);

        hr = IShellLinkW_QueryInterface(psl, &IID_IPersistFile, (LPVOID*)&ppf);

        if (SUCCEEDED(hr))
        {
            hr = IPersistFile_Save(ppf, pszLinkPath, TRUE);
            IPersistFile_Release(ppf);
        }

        IShellLinkW_Release(psl);
    }

    return hr;
}
