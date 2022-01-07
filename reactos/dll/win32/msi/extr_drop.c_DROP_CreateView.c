
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int * ops; } ;
struct TYPE_6__ {int * db; TYPE_1__ view; int table; } ;
typedef int MSIVIEW ;
typedef TYPE_2__ MSIDROPVIEW ;
typedef int MSIDATABASE ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ TABLE_CreateView (int *,int ,int *) ;
 int TRACE (char*,int **,int ) ;
 int debugstr_w (int ) ;
 int drop_ops ;
 TYPE_2__* msi_alloc_zero (int) ;
 int msi_free (TYPE_2__*) ;

UINT DROP_CreateView(MSIDATABASE *db, MSIVIEW **view, LPCWSTR name)
{
    MSIDROPVIEW *dv;
    UINT r;

    TRACE("%p %s\n", view, debugstr_w(name));

    dv = msi_alloc_zero(sizeof *dv);
    if(!dv)
        return ERROR_FUNCTION_FAILED;

    r = TABLE_CreateView(db, name, &dv->table);
    if (r != ERROR_SUCCESS)
    {
        msi_free( dv );
        return r;
    }

    dv->view.ops = &drop_ops;
    dv->db = db;

    *view = (MSIVIEW *)dv;

    return ERROR_SUCCESS;
}
