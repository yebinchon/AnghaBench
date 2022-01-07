
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_6__* package; } ;
typedef TYPE_1__ msi_dialog ;
struct TYPE_13__ {int progress_max; int progress_current; int attributes; int hwnd; int property; int progress_backwards; } ;
typedef TYPE_2__ msi_control ;
typedef int const WCHAR ;
struct TYPE_15__ {int action_progress_increment; } ;
struct TYPE_14__ {int Directory; } ;
typedef int MSIRECORD ;
typedef TYPE_3__ MSIFEATURE ;
typedef int const* LPWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int) ;
 int MAKELPARAM (int ,int) ;
 int MSI_RecordGetInteger (int *,int) ;
 int const* MSI_RecordGetString (int *,int) ;
 int MulDiv (int,int,int) ;
 int PBM_SETPOS ;
 int PBM_SETRANGE ;
 int SendMessageW (int ,int ,int,int ) ;
 int SetWindowTextW (int ,int const*) ;
 int TRACE (char*,int,int,int) ;
 int TRUE ;
 int debugstr_w (int const*) ;
 int deformat_string (TYPE_6__*,int const*,int const**) ;
 int msi_dialog_check_messages (int *) ;
 int const* msi_dialog_dup_property (TYPE_1__*,int ,int) ;
 TYPE_2__* msi_dialog_find_control (TYPE_1__*,int const*) ;
 int const* msi_dialog_get_style (int const*,int const**) ;
 int msi_dialog_set_property (TYPE_6__*,int ,int ) ;
 int msi_free (int const*) ;
 TYPE_3__* msi_seltree_get_selected_feature (TYPE_2__*) ;
 int msidbControlAttributesIndirect ;
 int strcmpW (int const*,int ) ;
 int const* szEmpty ;
 int szProgress ;
 int szProperty ;
 int szSelectionPath ;
 int szText ;

__attribute__((used)) static void dialog_handle_event( msi_dialog *dialog, const WCHAR *control,
                                 const WCHAR *attribute, MSIRECORD *rec )
{
    msi_control* ctrl;

    ctrl = msi_dialog_find_control( dialog, control );
    if (!ctrl)
        return;
    if( !strcmpW( attribute, szText ) )
    {
        const WCHAR *font_text, *text = ((void*)0);
        WCHAR *font, *text_fmt = ((void*)0);

        font_text = MSI_RecordGetString( rec , 1 );
        font = msi_dialog_get_style( font_text, &text );
        deformat_string( dialog->package, text, &text_fmt );
        if (text_fmt) text = text_fmt;
        else text = szEmpty;

        SetWindowTextW( ctrl->hwnd, text );

        msi_free( font );
        msi_free( text_fmt );
        msi_dialog_check_messages( ((void*)0) );
    }
    else if( !strcmpW( attribute, szProgress ) )
    {
        DWORD func, val1, val2, units;

        func = MSI_RecordGetInteger( rec, 1 );
        val1 = MSI_RecordGetInteger( rec, 2 );
        val2 = MSI_RecordGetInteger( rec, 3 );

        TRACE("progress: func %u val1 %u val2 %u\n", func, val1, val2);

        units = val1 / 512;
        switch (func)
        {
        case 0:
            SendMessageW( ctrl->hwnd, PBM_SETRANGE, 0, MAKELPARAM(0,100) );
            if (val2)
            {
                ctrl->progress_max = units ? units : 100;
                ctrl->progress_current = units;
                ctrl->progress_backwards = TRUE;
                SendMessageW( ctrl->hwnd, PBM_SETPOS, 100, 0 );
            }
            else
            {
                ctrl->progress_max = units ? units : 100;
                ctrl->progress_current = 0;
                ctrl->progress_backwards = FALSE;
                SendMessageW( ctrl->hwnd, PBM_SETPOS, 0, 0 );
            }
            break;
        case 1:
            if (val2) dialog->package->action_progress_increment = val1;
            else dialog->package->action_progress_increment = 0;
            break;
        case 2:
            if (ctrl->progress_backwards)
            {
                if (units >= ctrl->progress_current) ctrl->progress_current -= units;
                else ctrl->progress_current = 0;
            }
            else
            {
                if (ctrl->progress_current + units < ctrl->progress_max) ctrl->progress_current += units;
                else ctrl->progress_current = ctrl->progress_max;
            }
            SendMessageW( ctrl->hwnd, PBM_SETPOS, MulDiv(100, ctrl->progress_current, ctrl->progress_max), 0 );
            break;
        case 3:
            ctrl->progress_max += units;
            break;
        default:
            FIXME("Unknown progress message %u\n", func);
            break;
        }
    }
    else if ( !strcmpW( attribute, szProperty ) )
    {
        MSIFEATURE *feature = msi_seltree_get_selected_feature( ctrl );
        if (feature) msi_dialog_set_property( dialog->package, ctrl->property, feature->Directory );
    }
    else if ( !strcmpW( attribute, szSelectionPath ) )
    {
        BOOL indirect = ctrl->attributes & msidbControlAttributesIndirect;
        LPWSTR path = msi_dialog_dup_property( dialog, ctrl->property, indirect );
        if (!path) return;
        SetWindowTextW( ctrl->hwnd, path );
        msi_free(path);
    }
    else
    {
        FIXME("Attribute %s not being set\n", debugstr_w(attribute));
        return;
    }
}
