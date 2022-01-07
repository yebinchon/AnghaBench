
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int table; } ;
typedef TYPE_1__ column_info ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {int * ops; } ;
struct TYPE_12__ {int hold; TYPE_2__ view; TYPE_1__* colinfo; int * db; int table; } ;
typedef TYPE_2__ MSIVIEW ;
typedef int MSIDATABASE ;
typedef TYPE_3__ MSIALTERVIEW ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ TABLE_CreateView (int *,int ,int *) ;
 int TRACE (char*,TYPE_2__**,TYPE_1__*,int ,int) ;
 int alter_ops ;
 int debugstr_w (int ) ;
 TYPE_3__* msi_alloc_zero (int) ;
 int msi_free (TYPE_3__*) ;

UINT ALTER_CreateView( MSIDATABASE *db, MSIVIEW **view, LPCWSTR name, column_info *colinfo, int hold )
{
    MSIALTERVIEW *av;
    UINT r;

    TRACE("%p %p %s %d\n", view, colinfo, debugstr_w(name), hold );

    av = msi_alloc_zero( sizeof *av );
    if( !av )
        return ERROR_FUNCTION_FAILED;

    r = TABLE_CreateView( db, name, &av->table );
    if (r != ERROR_SUCCESS)
    {
        msi_free( av );
        return r;
    }

    if (colinfo)
        colinfo->table = name;


    av->view.ops = &alter_ops;
    av->db = db;
    av->hold = hold;
    av->colinfo = colinfo;

    *view = &av->view;

    return ERROR_SUCCESS;
}
