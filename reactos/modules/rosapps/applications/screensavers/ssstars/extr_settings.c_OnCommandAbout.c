
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int HWND ;
typedef scalar_t__ HINSTANCE ;
typedef int HICON ;
typedef int BOOL ;


 int GWLP_HINSTANCE ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;
 int IDI_STARFIELD ;
 int IDS_AUTHOR ;
 int IDS_DESCRIPTION ;
 int IDS_LICENSE ;
 int LoadIcon (scalar_t__,int ) ;
 int LoadString (scalar_t__,int ,int *,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int SIZEOF (int *) ;
 int ShellAbout (int ,int *,int *,int ) ;
 int TRUE ;
 int * _T (char*) ;
 int _tcscat (int *,int *) ;

__attribute__((used)) static BOOL OnCommandAbout(HWND hWnd)
{
    HINSTANCE hInstance;
    HICON hIcon;
    TCHAR szAppName[256];
    TCHAR szAuthor[256];
    TCHAR szLicense[1024];

    hInstance = (HINSTANCE)GetWindowLongPtr(hWnd, GWLP_HINSTANCE);

    hIcon = LoadIcon(hInstance, MAKEINTRESOURCE(IDI_STARFIELD));

    LoadString(hInstance, IDS_DESCRIPTION, szAppName, SIZEOF(szAppName));
    LoadString(hInstance, IDS_AUTHOR, szAuthor, SIZEOF(szAuthor));
    LoadString(hInstance, IDS_LICENSE, szLicense, SIZEOF(szLicense));

    _tcscat(szAppName, _T("#"));
    _tcscat(szAppName, szAuthor);

    ShellAbout(hWnd, szAppName, szLicense, hIcon);

    return TRUE;
}
