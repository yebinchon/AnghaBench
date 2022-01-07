
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_10__ {int LastActionResult; int db; } ;
struct TYPE_9__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIPACKAGE ;
typedef int * LPCWSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int INSTALLMESSAGE_INFO ;
 int MSIERR_INFO_ACTIONENDED ;
 int MSIERR_INFO_ACTIONSTART ;
 TYPE_1__* MSI_CreateRecord (int) ;
 int MSI_ProcessMessage (TYPE_2__*,int ,TYPE_1__*) ;
 int MSI_RecordSetInteger (TYPE_1__*,int,int ) ;
 int MSI_RecordSetStringW (TYPE_1__*,int,int *) ;
 int msi_free (int *) ;
 int * msi_get_error_message (int ,int ) ;
 int msiobj_release (int *) ;

__attribute__((used)) static void ui_actioninfo(MSIPACKAGE *package, LPCWSTR action, BOOL start,
                          INT rc)
{
    MSIRECORD *row;
    WCHAR *template;

    template = msi_get_error_message(package->db, start ? MSIERR_INFO_ACTIONSTART : MSIERR_INFO_ACTIONENDED);

    row = MSI_CreateRecord(2);
    if (!row)
    {
        msi_free(template);
        return;
    }
    MSI_RecordSetStringW(row, 0, template);
    MSI_RecordSetStringW(row, 1, action);
    MSI_RecordSetInteger(row, 2, start ? package->LastActionResult : rc);
    MSI_ProcessMessage(package, INSTALLMESSAGE_INFO, row);
    msiobj_release(&row->hdr);
    msi_free(template);
    if (!start) package->LastActionResult = rc;
}
