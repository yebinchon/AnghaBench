
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_3__ {int num_rows; } ;
typedef TYPE_1__ MSISTORAGESVIEW ;
typedef int MSIRECORD ;
typedef int BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int STORAGES_set_row (struct tagMSIVIEW*,int,int *,int ) ;
 int storages_set_table_size (TYPE_1__*,int) ;

__attribute__((used)) static UINT STORAGES_insert_row(struct tagMSIVIEW *view, MSIRECORD *rec, UINT row, BOOL temporary)
{
    MSISTORAGESVIEW *sv = (MSISTORAGESVIEW *)view;

    if (!storages_set_table_size(sv, ++sv->num_rows))
        return ERROR_FUNCTION_FAILED;

    if (row == -1)
        row = sv->num_rows - 1;



    return STORAGES_set_row(view, row, rec, 0);
}
