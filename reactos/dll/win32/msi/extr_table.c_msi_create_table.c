
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef enum StringPersistence { ____Placeholder_StringPersistence } StringPersistence ;
struct TYPE_27__ {size_t type; int column; struct TYPE_27__* next; int temporary; int table; } ;
typedef TYPE_2__ column_info ;
typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_32__ {size_t number; size_t type; int temporary; int * hash_table; scalar_t__ ref_count; scalar_t__ offset; void* colname; void* tablename; } ;
struct TYPE_31__ {int tables; int strings; } ;
struct TYPE_30__ {int hdr; } ;
struct TYPE_29__ {int ref_count; int col_count; int entry; TYPE_8__* colinfo; int name; scalar_t__ persistent; int * data_persistent; int * data; scalar_t__ row_count; } ;
struct TYPE_28__ {TYPE_1__* ops; } ;
struct TYPE_26__ {size_t (* execute ) (TYPE_3__*,int ) ;size_t (* insert_row ) (TYPE_3__*,TYPE_5__*,int,int) ;int (* delete ) (TYPE_3__*) ;} ;
typedef TYPE_3__ MSIVIEW ;
typedef TYPE_4__ MSITABLE ;
typedef TYPE_5__ MSIRECORD ;
typedef TYPE_6__ MSIDATABASE ;
typedef scalar_t__ MSICONDITION ;
typedef int MSICOLUMNINFO ;
typedef int LPCWSTR ;


 size_t ERROR_BAD_QUERY_SYNTAX ;
 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ MSICONDITION_FALSE ;
 TYPE_5__* MSI_CreateRecord (int) ;
 size_t MSI_RecordSetInteger (TYPE_5__*,int,size_t) ;
 size_t MSI_RecordSetStringW (TYPE_5__*,int,int ) ;
 int StringNonPersistent ;
 int StringPersistent ;
 size_t TABLE_CreateView (TYPE_6__*,int ,TYPE_3__**) ;
 scalar_t__ TABLE_Exists (TYPE_6__*,int ) ;
 int TRACE (char*,size_t) ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;
 int free_table (TYPE_4__*) ;
 int list_add_head (int *,int *) ;
 int lstrcpyW (int ,int ) ;
 int lstrlenW (int ) ;
 size_t msi_add_string (int ,int ,int,int) ;
 void* msi_alloc (int) ;
 void* msi_string_lookup (int ,size_t,int *) ;
 int msiobj_release (int *) ;
 size_t stub1 (TYPE_3__*,int ) ;
 size_t stub2 (TYPE_3__*,TYPE_5__*,int,int) ;
 int stub3 (TYPE_3__*) ;
 size_t stub4 (TYPE_3__*,int ) ;
 size_t stub5 (TYPE_3__*,TYPE_5__*,int,int) ;
 int stub6 (TYPE_3__*) ;
 int szColumns ;
 int szTables ;
 int table_calc_column_offsets (TYPE_6__*,TYPE_8__*,int) ;

UINT msi_create_table( MSIDATABASE *db, LPCWSTR name, column_info *col_info,
                       MSICONDITION persistent )
{
    enum StringPersistence string_persistence = (persistent) ? StringPersistent : StringNonPersistent;
    UINT r, nField;
    MSIVIEW *tv = ((void*)0);
    MSIRECORD *rec = ((void*)0);
    column_info *col;
    MSITABLE *table;
    UINT i;


    if( TABLE_Exists(db, name ) )
    {
        WARN("table %s exists\n", debugstr_w(name));
        return ERROR_BAD_QUERY_SYNTAX;
    }

    table = msi_alloc( sizeof (MSITABLE) + lstrlenW(name)*sizeof (WCHAR) );
    if( !table )
        return ERROR_FUNCTION_FAILED;

    table->ref_count = 1;
    table->row_count = 0;
    table->data = ((void*)0);
    table->data_persistent = ((void*)0);
    table->colinfo = ((void*)0);
    table->col_count = 0;
    table->persistent = persistent;
    lstrcpyW( table->name, name );

    for( col = col_info; col; col = col->next )
        table->col_count++;

    table->colinfo = msi_alloc( table->col_count * sizeof(MSICOLUMNINFO) );
    if (!table->colinfo)
    {
        free_table( table );
        return ERROR_FUNCTION_FAILED;
    }

    for( i = 0, col = col_info; col; i++, col = col->next )
    {
        UINT table_id = msi_add_string( db->strings, col->table, -1, string_persistence );
        UINT col_id = msi_add_string( db->strings, col->column, -1, string_persistence );

        table->colinfo[ i ].tablename = msi_string_lookup( db->strings, table_id, ((void*)0) );
        table->colinfo[ i ].number = i + 1;
        table->colinfo[ i ].colname = msi_string_lookup( db->strings, col_id, ((void*)0) );
        table->colinfo[ i ].type = col->type;
        table->colinfo[ i ].offset = 0;
        table->colinfo[ i ].ref_count = 0;
        table->colinfo[ i ].hash_table = ((void*)0);
        table->colinfo[ i ].temporary = col->temporary;
    }
    table_calc_column_offsets( db, table->colinfo, table->col_count);

    r = TABLE_CreateView( db, szTables, &tv );
    TRACE("CreateView returned %x\n", r);
    if( r )
    {
        free_table( table );
        return r;
    }

    r = tv->ops->execute( tv, 0 );
    TRACE("tv execute returned %x\n", r);
    if( r )
        goto err;

    rec = MSI_CreateRecord( 1 );
    if( !rec )
        goto err;

    r = MSI_RecordSetStringW( rec, 1, name );
    if( r )
        goto err;

    r = tv->ops->insert_row( tv, rec, -1, persistent == MSICONDITION_FALSE );
    TRACE("insert_row returned %x\n", r);
    if( r )
        goto err;

    tv->ops->delete( tv );
    tv = ((void*)0);

    msiobj_release( &rec->hdr );
    rec = ((void*)0);

    if( persistent != MSICONDITION_FALSE )
    {

        r = TABLE_CreateView( db, szColumns, &tv );
        if( r )
            goto err;

        r = tv->ops->execute( tv, 0 );
        TRACE("tv execute returned %x\n", r);
        if( r )
            goto err;

        rec = MSI_CreateRecord( 4 );
        if( !rec )
            goto err;

        r = MSI_RecordSetStringW( rec, 1, name );
        if( r )
            goto err;





        nField = 1;
        for( col = col_info; col; col = col->next )
        {
            r = MSI_RecordSetInteger( rec, 2, nField );
            if( r )
                goto err;

            r = MSI_RecordSetStringW( rec, 3, col->column );
            if( r )
                goto err;

            r = MSI_RecordSetInteger( rec, 4, col->type );
            if( r )
                goto err;

            r = tv->ops->insert_row( tv, rec, -1, FALSE );
            if( r )
                goto err;

            nField++;
        }
        if( !col )
            r = ERROR_SUCCESS;
    }

err:
    if (rec)
        msiobj_release( &rec->hdr );

    if( tv )
        tv->ops->delete( tv );

    if (r == ERROR_SUCCESS)
        list_add_head( &db->tables, &table->entry );
    else
        free_table( table );

    return r;
}
