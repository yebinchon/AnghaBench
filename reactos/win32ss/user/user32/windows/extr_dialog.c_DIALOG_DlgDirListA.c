
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int * LPWSTR ;
typedef scalar_t__ LPSTR ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int CP_ACP ;
 int DIALOG_DlgDirListW (int ,int *,int,int,int ,int ) ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int *,int) ;
 int WideCharToMultiByte (int ,int ,int *,int,scalar_t__,int,int *,int *) ;

__attribute__((used)) static INT DIALOG_DlgDirListA( HWND hDlg, LPSTR spec, INT idLBox,
                               INT idStatic, UINT attrib, BOOL combo )
{
    if (spec)
    {
        INT ret, len = MultiByteToWideChar( CP_ACP, 0, spec, -1, ((void*)0), 0 );
        LPWSTR specW = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) );
        if (specW == ((void*)0))
            return FALSE;
        MultiByteToWideChar( CP_ACP, 0, spec, -1, specW, len );
        ret = DIALOG_DlgDirListW( hDlg, specW, idLBox, idStatic, attrib, combo );
        WideCharToMultiByte( CP_ACP, 0, specW, -1, spec, 0x7fffffff, ((void*)0), ((void*)0) );
        HeapFree( GetProcessHeap(), 0, specW );
        return ret;
    }
    return DIALOG_DlgDirListW( hDlg, ((void*)0), idLBox, idStatic, attrib, combo );
}
