
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int package; } ;
typedef TYPE_1__ msi_dialog ;
struct TYPE_9__ {int attributes; int name; int hwnd; int property; } ;
typedef TYPE_2__ msi_control ;
typedef int LPWSTR ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int FALSE ;
 int SetFocus (int ) ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;
 int msi_dialog_dup_property (TYPE_1__*,int ,int) ;
 int msi_dialog_set_property (int ,int ,int ) ;
 int msi_dialog_update_pathedit (TYPE_1__*,TYPE_2__*) ;
 int msi_dialog_verify_path (int ) ;
 int msi_free (int ) ;
 int msi_get_window_text (int ) ;
 int msidbControlAttributesIndirect ;

__attribute__((used)) static BOOL msi_dialog_onkillfocus( msi_dialog *dialog, msi_control *control )
{
    LPWSTR buf, prop;
    BOOL indirect;
    BOOL valid;

    indirect = control->attributes & msidbControlAttributesIndirect;
    prop = msi_dialog_dup_property( dialog, control->property, indirect );

    buf = msi_get_window_text( control->hwnd );

    if ( !msi_dialog_verify_path( buf ) )
    {

        ERR("Invalid path %s\n", debugstr_w( buf ));
        valid = FALSE;
        SetFocus( control->hwnd );
    }
    else
    {
        valid = TRUE;
        msi_dialog_set_property( dialog->package, prop, buf );
    }

    msi_dialog_update_pathedit( dialog, control );

    TRACE("edit %s contents changed, set %s\n", debugstr_w(control->name),
          debugstr_w(prop));

    msi_free( buf );
    msi_free( prop );

    return valid;
}
