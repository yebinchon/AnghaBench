
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct expr {int dummy; } ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {TYPE_1__* ops; } ;
struct TYPE_19__ {struct TYPE_19__* next; scalar_t__ table_index; scalar_t__ col_count; TYPE_5__* view; } ;
struct TYPE_18__ {int hdr; } ;
struct TYPE_15__ {int * ops; } ;
struct TYPE_17__ {TYPE_10__ view; TYPE_4__* tables; int table_count; int col_count; struct expr* cond; TYPE_3__* db; } ;
struct TYPE_16__ {scalar_t__ (* get_dimensions ) (TYPE_5__*,int *,scalar_t__*) ;int (* delete ) (TYPE_5__*) ;} ;
typedef TYPE_2__ MSIWHEREVIEW ;
typedef int MSIVIEW ;
typedef TYPE_3__ MSIDATABASE ;
typedef char* LPWSTR ;
typedef TYPE_4__ JOINTABLE ;


 int ERR (char*) ;
 scalar_t__ ERROR_BAD_QUERY_SYNTAX ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ TABLE_CreateView (TYPE_3__*,char*,TYPE_5__**) ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 scalar_t__ WHERE_VerifyCondition (TYPE_2__*,struct expr*,scalar_t__*) ;
 int WHERE_delete (TYPE_10__*) ;
 int debugstr_w (char*) ;
 TYPE_4__* msi_alloc (int) ;
 TYPE_2__* msi_alloc_zero (int) ;
 int msi_free (TYPE_4__*) ;
 int msiobj_addref (int *) ;
 char* strchrW (char*,char) ;
 scalar_t__ stub1 (TYPE_5__*,int *,scalar_t__*) ;
 int stub2 (TYPE_5__*) ;
 int where_ops ;

UINT WHERE_CreateView( MSIDATABASE *db, MSIVIEW **view, LPWSTR tables,
                       struct expr *cond )
{
    MSIWHEREVIEW *wv = ((void*)0);
    UINT r, valid = 0;
    WCHAR *ptr;

    TRACE("(%s)\n", debugstr_w(tables) );

    wv = msi_alloc_zero( sizeof *wv );
    if( !wv )
        return ERROR_FUNCTION_FAILED;


    wv->view.ops = &where_ops;
    msiobj_addref( &db->hdr );
    wv->db = db;
    wv->cond = cond;

    while (*tables)
    {
        JOINTABLE *table;

        if ((ptr = strchrW(tables, ' ')))
            *ptr = '\0';

        table = msi_alloc(sizeof(JOINTABLE));
        if (!table)
        {
            r = ERROR_OUTOFMEMORY;
            goto end;
        }

        r = TABLE_CreateView(db, tables, &table->view);
        if (r != ERROR_SUCCESS)
        {
            WARN("can't create table: %s\n", debugstr_w(tables));
            msi_free(table);
            r = ERROR_BAD_QUERY_SYNTAX;
            goto end;
        }

        r = table->view->ops->get_dimensions(table->view, ((void*)0),
                                             &table->col_count);
        if (r != ERROR_SUCCESS)
        {
            ERR("can't get table dimensions\n");
            table->view->ops->delete(table->view);
            msi_free(table);
            goto end;
        }

        wv->col_count += table->col_count;
        table->table_index = wv->table_count++;

        table->next = wv->tables;
        wv->tables = table;

        if (!ptr)
            break;

        tables = ptr + 1;
    }

    if( cond )
    {
        r = WHERE_VerifyCondition( wv, cond, &valid );
        if( r != ERROR_SUCCESS )
            goto end;
        if( !valid ) {
            r = ERROR_FUNCTION_FAILED;
            goto end;
        }
    }

    *view = (MSIVIEW*) wv;

    return ERROR_SUCCESS;
end:
    WHERE_delete(&wv->view);

    return r;
}
