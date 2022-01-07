
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int package; scalar_t__ retval; } ;
typedef TYPE_1__ msi_dialog ;
typedef char WCHAR ;
typedef int UINT ;


 int ERR (char*,int ) ;
 int ERROR_SUCCESS ;
 scalar_t__ IDABORT ;
 scalar_t__ IDCANCEL ;
 scalar_t__ IDOK ;
 scalar_t__ IDRETRY ;
 int debugstr_w (char const*) ;
 int event_cleanup_subscriptions (int ,int ) ;
 int msi_dialog_end_dialog (TYPE_1__*) ;
 int strcmpW (char const*,char const*) ;

__attribute__((used)) static UINT event_end_dialog( msi_dialog *dialog, const WCHAR *argument )
{
    static const WCHAR exitW[] = {'E','x','i','t',0};
    static const WCHAR retryW[] = {'R','e','t','r','y',0};
    static const WCHAR ignoreW[] = {'I','g','n','o','r','e',0};
    static const WCHAR returnW[] = {'R','e','t','u','r','n',0};

    if (!strcmpW( argument, exitW ))
        dialog->retval = IDCANCEL;
    else if (!strcmpW( argument, retryW ))
        dialog->retval = IDRETRY;
    else if (!strcmpW( argument, ignoreW ))
        dialog->retval = IDOK;
    else if (!strcmpW( argument, returnW ))
        dialog->retval = 0;
    else
    {
        ERR("Unknown argument string %s\n", debugstr_w(argument));
        dialog->retval = IDABORT;
    }
    event_cleanup_subscriptions( dialog->package, dialog->name );
    msi_dialog_end_dialog( dialog );
    return ERROR_SUCCESS;
}
