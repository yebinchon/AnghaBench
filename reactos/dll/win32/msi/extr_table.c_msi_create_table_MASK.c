#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  enum StringPersistence { ____Placeholder_StringPersistence } StringPersistence ;
struct TYPE_27__ {size_t type; int /*<<< orphan*/  column; struct TYPE_27__* next; int /*<<< orphan*/  temporary; int /*<<< orphan*/  table; } ;
typedef  TYPE_2__ column_info ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_32__ {size_t number; size_t type; int /*<<< orphan*/  temporary; int /*<<< orphan*/ * hash_table; scalar_t__ ref_count; scalar_t__ offset; void* colname; void* tablename; } ;
struct TYPE_31__ {int /*<<< orphan*/  tables; int /*<<< orphan*/  strings; } ;
struct TYPE_30__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_29__ {int ref_count; int col_count; int /*<<< orphan*/  entry; TYPE_8__* colinfo; int /*<<< orphan*/  name; scalar_t__ persistent; int /*<<< orphan*/ * data_persistent; int /*<<< orphan*/ * data; scalar_t__ row_count; } ;
struct TYPE_28__ {TYPE_1__* ops; } ;
struct TYPE_26__ {size_t (* execute ) (TYPE_3__*,int /*<<< orphan*/ ) ;size_t (* insert_row ) (TYPE_3__*,TYPE_5__*,int,int) ;int /*<<< orphan*/  (* delete ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ MSIVIEW ;
typedef  TYPE_4__ MSITABLE ;
typedef  TYPE_5__ MSIRECORD ;
typedef  TYPE_6__ MSIDATABASE ;
typedef  scalar_t__ MSICONDITION ;
typedef  int /*<<< orphan*/  MSICOLUMNINFO ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 size_t ERROR_BAD_QUERY_SYNTAX ; 
 size_t ERROR_FUNCTION_FAILED ; 
 size_t ERROR_SUCCESS ; 
 int FALSE ; 
 scalar_t__ MSICONDITION_FALSE ; 
 TYPE_5__* FUNC0 (int) ; 
 size_t FUNC1 (TYPE_5__*,int,size_t) ; 
 size_t FUNC2 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int StringNonPersistent ; 
 int StringPersistent ; 
 size_t FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 scalar_t__ FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC13 (int) ; 
 void* FUNC14 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 size_t FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 size_t FUNC17 (TYPE_3__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 size_t FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 size_t FUNC20 (TYPE_3__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  szColumns ; 
 int /*<<< orphan*/  szTables ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*,TYPE_8__*,int) ; 

UINT FUNC23( MSIDATABASE *db, LPCWSTR name, column_info *col_info,
                       MSICONDITION persistent )
{
    enum StringPersistence string_persistence = (persistent) ? StringPersistent : StringNonPersistent;
    UINT r, nField;
    MSIVIEW *tv = NULL;
    MSIRECORD *rec = NULL;
    column_info *col;
    MSITABLE *table;
    UINT i;

    /* only add tables that don't exist already */
    if( FUNC4(db, name ) )
    {
        FUNC6("table %s exists\n", FUNC7(name));
        return ERROR_BAD_QUERY_SYNTAX;
    }

    table = FUNC13( sizeof (MSITABLE) + FUNC11(name)*sizeof (WCHAR) );
    if( !table )
        return ERROR_FUNCTION_FAILED;

    table->ref_count = 1;
    table->row_count = 0;
    table->data = NULL;
    table->data_persistent = NULL;
    table->colinfo = NULL;
    table->col_count = 0;
    table->persistent = persistent;
    FUNC10( table->name, name );

    for( col = col_info; col; col = col->next )
        table->col_count++;

    table->colinfo = FUNC13( table->col_count * sizeof(MSICOLUMNINFO) );
    if (!table->colinfo)
    {
        FUNC8( table );
        return ERROR_FUNCTION_FAILED;
    }

    for( i = 0, col = col_info; col; i++, col = col->next )
    {
        UINT table_id = FUNC12( db->strings, col->table, -1, string_persistence );
        UINT col_id = FUNC12( db->strings, col->column, -1, string_persistence );

        table->colinfo[ i ].tablename = FUNC14( db->strings, table_id, NULL );
        table->colinfo[ i ].number = i + 1;
        table->colinfo[ i ].colname = FUNC14( db->strings, col_id, NULL );
        table->colinfo[ i ].type = col->type;
        table->colinfo[ i ].offset = 0;
        table->colinfo[ i ].ref_count = 0;
        table->colinfo[ i ].hash_table = NULL;
        table->colinfo[ i ].temporary = col->temporary;
    }
    FUNC22( db, table->colinfo, table->col_count);

    r = FUNC3( db, szTables, &tv );
    FUNC5("CreateView returned %x\n", r);
    if( r )
    {
        FUNC8( table );
        return r;
    }

    r = tv->ops->execute( tv, 0 );
    FUNC5("tv execute returned %x\n", r);
    if( r )
        goto err;

    rec = FUNC0( 1 );
    if( !rec )
        goto err;

    r = FUNC2( rec, 1, name );
    if( r )
        goto err;

    r = tv->ops->insert_row( tv, rec, -1, persistent == MSICONDITION_FALSE );
    FUNC5("insert_row returned %x\n", r);
    if( r )
        goto err;

    tv->ops->delete( tv );
    tv = NULL;

    FUNC15( &rec->hdr );
    rec = NULL;

    if( persistent != MSICONDITION_FALSE )
    {
        /* add each column to the _Columns table */
        r = FUNC3( db, szColumns, &tv );
        if( r )
            goto err;

        r = tv->ops->execute( tv, 0 );
        FUNC5("tv execute returned %x\n", r);
        if( r )
            goto err;

        rec = FUNC0( 4 );
        if( !rec )
            goto err;

        r = FUNC2( rec, 1, name );
        if( r )
            goto err;

        /*
         * need to set the table, column number, col name and type
         * for each column we enter in the table
         */
        nField = 1;
        for( col = col_info; col; col = col->next )
        {
            r = FUNC1( rec, 2, nField );
            if( r )
                goto err;

            r = FUNC2( rec, 3, col->column );
            if( r )
                goto err;

            r = FUNC1( rec, 4, col->type );
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
        FUNC15( &rec->hdr );
    /* FIXME: remove values from the string table on error */
    if( tv )
        tv->ops->delete( tv );

    if (r == ERROR_SUCCESS)
        FUNC9( &db->tables, &table->entry );
    else
        FUNC8( table );

    return r;
}