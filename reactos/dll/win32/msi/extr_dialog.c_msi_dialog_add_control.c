
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hwnd; } ;
typedef TYPE_1__ msi_dialog ;
typedef int msi_control ;
typedef int WCHAR ;
typedef int MSIRECORD ;
typedef int const* LPCWSTR ;
typedef int DWORD ;


 int MSI_RecordGetInteger (int *,int) ;
 int * MSI_RecordGetString (int *,int) ;
 int TRACE (char*,int ,int ,int,int ,int) ;
 int WS_DISABLED ;
 int WS_EX_CLIENTEDGE ;
 int WS_VISIBLE ;
 int debugstr_w (int const*) ;
 int * dialog_create_window (TYPE_1__*,int *,int,int const*,int const*,int const*,int,int ) ;
 int dialog_map_events (TYPE_1__*,int const*) ;
 int msidbControlAttributesEnabled ;
 int msidbControlAttributesSunken ;
 int msidbControlAttributesVisible ;
 scalar_t__ strcmpW (int const*,int ) ;
 int szScrollableText ;

__attribute__((used)) static msi_control *msi_dialog_add_control( msi_dialog *dialog,
                MSIRECORD *rec, LPCWSTR szCls, DWORD style )
{
    DWORD attributes;
    const WCHAR *text = ((void*)0), *name, *control_type;
    DWORD exstyle = 0;

    name = MSI_RecordGetString( rec, 2 );
    control_type = MSI_RecordGetString( rec, 3 );
    attributes = MSI_RecordGetInteger( rec, 8 );
    if (strcmpW( control_type, szScrollableText )) text = MSI_RecordGetString( rec, 10 );

    TRACE("%s, %s, %08x, %s, %08x\n", debugstr_w(szCls), debugstr_w(name),
          attributes, debugstr_w(text), style);

    if( attributes & msidbControlAttributesVisible )
        style |= WS_VISIBLE;
    if( ~attributes & msidbControlAttributesEnabled )
        style |= WS_DISABLED;
    if( attributes & msidbControlAttributesSunken )
        exstyle |= WS_EX_CLIENTEDGE;

    dialog_map_events( dialog, name );

    return dialog_create_window( dialog, rec, exstyle, szCls, name, text, style, dialog->hwnd );
}
