
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int * ops; } ;
struct TYPE_7__ {scalar_t__ num_rows; int * db; TYPE_1__ view; } ;
typedef int MSIVIEW ;
typedef TYPE_2__ MSISTORAGESVIEW ;
typedef int MSIDATABASE ;
typedef scalar_t__ INT ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int TRACE (char*,int *,int **) ;
 scalar_t__ add_storages_to_table (TYPE_2__*) ;
 TYPE_2__* msi_alloc_zero (int) ;
 int msi_free (TYPE_2__*) ;
 int storages_ops ;

UINT STORAGES_CreateView(MSIDATABASE *db, MSIVIEW **view)
{
    MSISTORAGESVIEW *sv;
    INT rows;

    TRACE("(%p, %p)\n", db, view);

    sv = msi_alloc_zero( sizeof(MSISTORAGESVIEW) );
    if (!sv)
        return ERROR_FUNCTION_FAILED;

    sv->view.ops = &storages_ops;
    sv->db = db;

    rows = add_storages_to_table(sv);
    if (rows < 0)
    {
        msi_free( sv );
        return ERROR_FUNCTION_FAILED;
    }
    sv->num_rows = rows;

    *view = (MSIVIEW *)sv;

    return ERROR_SUCCESS;
}
