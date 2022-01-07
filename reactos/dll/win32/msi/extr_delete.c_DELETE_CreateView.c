
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int * ops; } ;
struct TYPE_8__ {TYPE_1__ view; TYPE_1__* table; int * db; } ;
typedef TYPE_1__ MSIVIEW ;
typedef TYPE_2__ MSIDELETEVIEW ;
typedef int MSIDATABASE ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*) ;
 int delete_ops ;
 TYPE_2__* msi_alloc_zero (int) ;

UINT DELETE_CreateView( MSIDATABASE *db, MSIVIEW **view, MSIVIEW *table )
{
    MSIDELETEVIEW *dv = ((void*)0);

    TRACE("%p\n", dv );

    dv = msi_alloc_zero( sizeof *dv );
    if( !dv )
        return ERROR_FUNCTION_FAILED;


    dv->view.ops = &delete_ops;
    dv->db = db;
    dv->table = table;

    *view = &dv->view;

    return ERROR_SUCCESS;
}
