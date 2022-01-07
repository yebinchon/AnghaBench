
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {TYPE_3__* table; } ;
struct TYPE_6__ {scalar_t__ (* get_dimensions ) (TYPE_3__*,int *,scalar_t__*) ;scalar_t__ (* get_column_info ) (TYPE_3__*,scalar_t__,int *,scalar_t__*,int *,int *) ;} ;
typedef int MSIRECORD ;
typedef TYPE_2__ MSIINSERTVIEW ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ MSITYPE_KEY ;
 scalar_t__ MSI_RecordIsNull (int *,scalar_t__) ;
 int TRUE ;
 scalar_t__ stub1 (TYPE_3__*,int *,scalar_t__*) ;
 scalar_t__ stub2 (TYPE_3__*,scalar_t__,int *,scalar_t__*,int *,int *) ;

__attribute__((used)) static BOOL row_has_null_primary_keys(MSIINSERTVIEW *iv, MSIRECORD *row)
{
    UINT r, i, col_count, type;

    r = iv->table->ops->get_dimensions( iv->table, ((void*)0), &col_count );
    if (r != ERROR_SUCCESS)
        return FALSE;

    for (i = 1; i <= col_count; i++)
    {
        r = iv->table->ops->get_column_info(iv->table, i, ((void*)0), &type,
                                            ((void*)0), ((void*)0));
        if (r != ERROR_SUCCESS)
            return FALSE;

        if (!(type & MSITYPE_KEY))
            continue;

        if (MSI_RecordIsNull(row, i))
            return TRUE;
    }

    return FALSE;
}
