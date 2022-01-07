
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;


 scalar_t__ ERROR_SUCCESS ;
 int MSI_CloseRecord (int *) ;
 int MSI_RecordCopyField (TYPE_1__*,scalar_t__,TYPE_1__*,scalar_t__) ;
 scalar_t__ MSI_RecordGetFieldCount (TYPE_1__*) ;
 scalar_t__ TABLE_get_row (struct tagMSIVIEW*,scalar_t__,TYPE_1__**) ;
 int msiobj_release (int *) ;

__attribute__((used)) static UINT msi_refresh_record( struct tagMSIVIEW *view, MSIRECORD *rec, UINT row )
{
    MSIRECORD *curr;
    UINT r, i, count;

    r = TABLE_get_row(view, row - 1, &curr);
    if (r != ERROR_SUCCESS)
        return r;


    MSI_CloseRecord(&rec->hdr);

    count = MSI_RecordGetFieldCount(rec);
    for (i = 0; i < count; i++)
        MSI_RecordCopyField(curr, i + 1, rec, i + 1);

    msiobj_release(&curr->hdr);
    return ERROR_SUCCESS;
}
