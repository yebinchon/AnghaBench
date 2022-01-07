
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {TYPE_7__* package; scalar_t__ default_font; int attributes; int hwnd; int scale; int name; } ;
typedef TYPE_1__ msi_dialog ;
typedef char WCHAR ;
struct TYPE_24__ {int db; } ;
struct TYPE_23__ {TYPE_1__* lpCreateParams; } ;
struct TYPE_22__ {int hdr; } ;
struct TYPE_21__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ MSIRECORD ;
typedef int LRESULT ;
typedef int * LPWSTR ;
typedef TYPE_4__* LPCREATESTRUCTW ;
typedef int LONG_PTR ;
typedef int HWND ;


 int GWLP_USERDATA ;
 int MSI_RecordGetInteger (TYPE_3__*,int) ;
 int MSI_RecordGetString (TYPE_3__*,int) ;
 int SWP_NOACTIVATE ;
 int SWP_NOREDRAW ;
 int SWP_NOZORDER ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int SetWindowTextW (int ,int *) ;
 int TRACE (char*,TYPE_1__*,...) ;
 int debugstr_w (int ) ;
 int msi_dialog_adjust_dialog_pos (TYPE_1__*,TYPE_3__*,TYPE_2__*) ;
 int msi_dialog_build_font_list (TYPE_1__*) ;
 int msi_dialog_evaluate_control_conditions (TYPE_1__*) ;
 int msi_dialog_fill_controls (TYPE_1__*) ;
 int msi_dialog_get_sans_serif_height (int ) ;
 int msi_dialog_set_tab_order (TYPE_1__*,int ) ;
 scalar_t__ msi_dup_property (int ,char const*) ;
 int msi_free (int *) ;
 int * msi_get_deformatted_field (TYPE_7__*,TYPE_3__*,int) ;
 TYPE_3__* msi_get_dialog_record (TYPE_1__*) ;
 int msiobj_release (int *) ;
 scalar_t__ strdupW (char const*) ;

__attribute__((used)) static LRESULT msi_dialog_oncreate( HWND hwnd, LPCREATESTRUCTW cs )
{
    static const WCHAR df[] = {
        'D','e','f','a','u','l','t','U','I','F','o','n','t',0 };
    static const WCHAR dfv[] = {
        'M','S',' ','S','h','e','l','l',' ','D','l','g',0 };
    msi_dialog *dialog = cs->lpCreateParams;
    MSIRECORD *rec = ((void*)0);
    LPWSTR title = ((void*)0);
    RECT pos;

    TRACE("%p %p\n", dialog, dialog->package);

    dialog->hwnd = hwnd;
    SetWindowLongPtrW( hwnd, GWLP_USERDATA, (LONG_PTR) dialog );

    rec = msi_get_dialog_record( dialog );
    if( !rec )
    {
        TRACE("No record found for dialog %s\n", debugstr_w(dialog->name));
        return -1;
    }

    dialog->scale = msi_dialog_get_sans_serif_height(dialog->hwnd);

    msi_dialog_adjust_dialog_pos( dialog, rec, &pos );

    dialog->attributes = MSI_RecordGetInteger( rec, 6 );

    dialog->default_font = msi_dup_property( dialog->package->db, df );
    if (!dialog->default_font)
    {
        dialog->default_font = strdupW(dfv);
        if (!dialog->default_font)
        {
            msiobj_release( &rec->hdr );
            return -1;
        }
    }

    title = msi_get_deformatted_field( dialog->package, rec, 7 );
    SetWindowTextW( hwnd, title );
    msi_free( title );

    SetWindowPos( hwnd, 0, pos.left, pos.top,
                  pos.right - pos.left, pos.bottom - pos.top,
                  SWP_NOACTIVATE | SWP_NOZORDER | SWP_NOREDRAW );

    msi_dialog_build_font_list( dialog );
    msi_dialog_fill_controls( dialog );
    msi_dialog_evaluate_control_conditions( dialog );
    msi_dialog_set_tab_order( dialog, MSI_RecordGetString( rec, 8 ) );
    msiobj_release( &rec->hdr );

    return 0;
}
