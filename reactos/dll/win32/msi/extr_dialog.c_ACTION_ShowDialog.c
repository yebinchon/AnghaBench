
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_10__ {int db; } ;
struct TYPE_9__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIPACKAGE ;
typedef int INT ;


 int INSTALLMESSAGE_INFO ;
 int INSTALLMESSAGE_SHOWDIALOG ;
 TYPE_1__* MSI_CreateRecord (int) ;
 int MSI_ProcessMessage (TYPE_2__*,int ,TYPE_1__*) ;
 int MSI_RecordSetInteger (TYPE_1__*,int,int) ;
 int MSI_RecordSetStringW (TYPE_1__*,int,char const*) ;
 int TABLE_Exists (int ,char const*) ;
 int msiobj_release (int *) ;

INT ACTION_ShowDialog( MSIPACKAGE *package, const WCHAR *dialog )
{
    static const WCHAR szDialog[] = {'D','i','a','l','o','g',0};
    MSIRECORD *row;
    INT rc;

    if (!TABLE_Exists(package->db, szDialog)) return 0;

    row = MSI_CreateRecord(0);
    if (!row) return -1;
    MSI_RecordSetStringW(row, 0, dialog);
    rc = MSI_ProcessMessage(package, INSTALLMESSAGE_SHOWDIALOG, row);
    msiobj_release(&row->hdr);

    if (rc == -2) rc = 0;

    if (!rc)
    {
        MSIRECORD *row = MSI_CreateRecord(2);
        if (!row) return -1;
        MSI_RecordSetInteger(row, 1, 2726);
        MSI_RecordSetStringW(row, 2, dialog);
        MSI_ProcessMessage(package, INSTALLMESSAGE_INFO, row);

        msiobj_release(&row->hdr);
    }
    return rc;
}
