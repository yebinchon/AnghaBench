
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_14__ {int * disk_prompt; } ;
struct TYPE_13__ {int db; } ;
struct TYPE_12__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIPACKAGE ;
typedef TYPE_3__ MSIMEDIAINFO ;
typedef int LPWSTR ;


 scalar_t__ IDRETRY ;
 int INSTALLMESSAGE_ERROR ;
 int MB_RETRYCANCEL ;
 int MSIERR_CABNOTFOUND ;
 TYPE_1__* MSI_CreateRecord (int) ;
 scalar_t__ MSI_ProcessMessage (TYPE_2__*,int,TYPE_1__*) ;
 int MSI_RecordSetInteger (TYPE_1__*,int,int ) ;
 int MSI_RecordSetStringW (TYPE_1__*,int,int *) ;
 int msi_dup_property (int ,int ) ;
 int msi_free (int ) ;
 int msiobj_release (int *) ;
 int source_matches_volume (TYPE_3__*,int ) ;
 int szSourceDir ;

__attribute__((used)) static UINT msi_change_media(MSIPACKAGE *package, MSIMEDIAINFO *mi)
{
    MSIRECORD *record;
    LPWSTR source_dir;
    UINT r = IDRETRY;

    source_dir = msi_dup_property(package->db, szSourceDir);
    record = MSI_CreateRecord(2);

    while (r == IDRETRY && !source_matches_volume(mi, source_dir))
    {
        MSI_RecordSetStringW(record, 0, ((void*)0));
        MSI_RecordSetInteger(record, 1, MSIERR_CABNOTFOUND);
        MSI_RecordSetStringW(record, 2, mi->disk_prompt);
        r = MSI_ProcessMessage(package, INSTALLMESSAGE_ERROR | MB_RETRYCANCEL, record);
    }

    msiobj_release(&record->hdr);
    msi_free(source_dir);

    return r;
}
