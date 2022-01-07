
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_18__ {int hold; TYPE_1__* colinfo; int db; } ;
struct TYPE_17__ {int hdr; } ;
struct TYPE_16__ {TYPE_2__* ops; } ;
struct TYPE_15__ {scalar_t__ (* add_column ) (TYPE_3__*,int ,scalar_t__,int ,int ,int) ;int (* delete ) (TYPE_3__*) ;} ;
struct TYPE_14__ {int type; int column; int table; } ;
typedef TYPE_3__ MSIVIEW ;
typedef TYPE_4__ MSIQUERY ;
typedef TYPE_5__ MSIALTERVIEW ;


 scalar_t__ ERROR_BAD_QUERY_SYNTAX ;
 scalar_t__ ERROR_SUCCESS ;
 int ITERATE_columns ;
 scalar_t__ MSI_IterateRecords (TYPE_4__*,int *,int ,scalar_t__*) ;
 scalar_t__ MSI_OpenQuery (int ,TYPE_4__**,char const*,int ,int ) ;
 scalar_t__ TABLE_CreateView (int ,char const*,TYPE_3__**) ;
 scalar_t__ check_column_exists (int ,int ,int ) ;
 int msiobj_release (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 scalar_t__ stub3 (TYPE_3__*,int ,scalar_t__,int ,int ,int) ;
 int stub4 (TYPE_3__*) ;

__attribute__((used)) static UINT alter_add_column(MSIALTERVIEW *av)
{
    UINT r, colnum = 1;
    MSIQUERY *view;
    MSIVIEW *columns;

    static const WCHAR szColumns[] = {'_','C','o','l','u','m','n','s',0};
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','_','C','o','l','u','m','n','s','`',' ','W','H','E','R','E',' ',
        '`','T','a','b','l','e','`','=','\'','%','s','\'',' ','O','R','D','E','R',' ',
        'B','Y',' ','`','N','u','m','b','e','r','`',0
    };

    r = TABLE_CreateView(av->db, szColumns, &columns);
    if (r != ERROR_SUCCESS)
        return r;

    if (check_column_exists(av->db, av->colinfo->table, av->colinfo->column))
    {
        columns->ops->delete(columns);
        return ERROR_BAD_QUERY_SYNTAX;
    }

    r = MSI_OpenQuery(av->db, &view, query, av->colinfo->table, av->colinfo->column);
    if (r == ERROR_SUCCESS)
    {
        r = MSI_IterateRecords(view, ((void*)0), ITERATE_columns, &colnum);
        msiobj_release(&view->hdr);
        if (r != ERROR_SUCCESS)
        {
            columns->ops->delete(columns);
            return r;
        }
    }
    r = columns->ops->add_column(columns, av->colinfo->table,
                                 colnum, av->colinfo->column,
                                 av->colinfo->type, (av->hold == 1));

    columns->ops->delete(columns);
    return r;
}
