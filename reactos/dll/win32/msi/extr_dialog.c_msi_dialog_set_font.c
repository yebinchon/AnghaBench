
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hfont; } ;
typedef TYPE_1__ msi_font ;
typedef int msi_dialog ;
typedef int WPARAM ;
typedef int UINT ;
typedef int LPCWSTR ;
typedef int HWND ;


 int ERR (char*,int ) ;
 int ERROR_SUCCESS ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int WM_SETFONT ;
 int debugstr_w (int ) ;
 TYPE_1__* msi_dialog_find_font (int *,int ) ;

__attribute__((used)) static UINT msi_dialog_set_font( msi_dialog *dialog, HWND hwnd, LPCWSTR name )
{
    msi_font *font;

    font = msi_dialog_find_font( dialog, name );
    if( font )
        SendMessageW( hwnd, WM_SETFONT, (WPARAM) font->hfont, TRUE );
    else
        ERR("No font entry for %s\n", debugstr_w(name));
    return ERROR_SUCCESS;
}
