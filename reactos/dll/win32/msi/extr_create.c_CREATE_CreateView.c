
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int type; int temporary; void* table; struct TYPE_12__* next; } ;
typedef TYPE_2__ column_info ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {int * ops; } ;
struct TYPE_14__ {void* hold; void* bIsTemp; TYPE_2__* col_info; void* name; TYPE_3__* db; TYPE_1__ view; } ;
struct TYPE_13__ {int hdr; } ;
typedef int MSIVIEW ;
typedef TYPE_3__ MSIDATABASE ;
typedef TYPE_4__ MSICREATEVIEW ;
typedef void* LPCWSTR ;
typedef void* BOOL ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 void* FALSE ;
 int MSITYPE_KEY ;
 int TRACE (char*,TYPE_4__*) ;
 void* TRUE ;
 scalar_t__ check_columns (TYPE_2__*) ;
 int create_ops ;
 TYPE_4__* msi_alloc_zero (int) ;
 int msi_free (TYPE_4__*) ;
 int msiobj_addref (int *) ;

UINT CREATE_CreateView( MSIDATABASE *db, MSIVIEW **view, LPCWSTR table,
                        column_info *col_info, BOOL hold )
{
    MSICREATEVIEW *cv = ((void*)0);
    UINT r;
    column_info *col;
    BOOL temp = TRUE;
    BOOL tempprim = FALSE;

    TRACE("%p\n", cv );

    r = check_columns( col_info );
    if( r != ERROR_SUCCESS )
        return r;

    cv = msi_alloc_zero( sizeof *cv );
    if( !cv )
        return ERROR_FUNCTION_FAILED;

    for( col = col_info; col; col = col->next )
    {
        if (!col->table)
            col->table = table;

        if( !col->temporary )
            temp = FALSE;
        else if ( col->type & MSITYPE_KEY )
            tempprim = TRUE;
    }

    if ( !temp && tempprim )
    {
        msi_free( cv );
        return ERROR_FUNCTION_FAILED;
    }


    cv->view.ops = &create_ops;
    msiobj_addref( &db->hdr );
    cv->db = db;
    cv->name = table;
    cv->col_info = col_info;
    cv->bIsTemp = temp;
    cv->hold = hold;
    *view = (MSIVIEW*) cv;

    return ERROR_SUCCESS;
}
