
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int strings; } ;
struct TYPE_6__ {scalar_t__ row_count; int data; } ;
typedef TYPE_1__ MSITABLE ;
typedef TYPE_2__ MSIDATABASE ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int LONG_STR_BYTES ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;
 scalar_t__ get_table (TYPE_2__*,int ,TYPE_1__**) ;
 scalar_t__ msi_string2id (int ,int ,int,scalar_t__*) ;
 scalar_t__ read_table_int (int ,scalar_t__,int ,int ) ;
 int strcmpW (int ,int ) ;
 int szColumns ;
 int szStorages ;
 int szStreams ;
 int szTables ;

BOOL TABLE_Exists( MSIDATABASE *db, LPCWSTR name )
{
    UINT r, table_id, i;
    MSITABLE *table;

    if( !strcmpW( name, szTables ) || !strcmpW( name, szColumns ) ||
        !strcmpW( name, szStreams ) || !strcmpW( name, szStorages ) )
        return TRUE;

    r = msi_string2id( db->strings, name, -1, &table_id );
    if( r != ERROR_SUCCESS )
    {
        TRACE("Couldn't find id for %s\n", debugstr_w(name));
        return FALSE;
    }

    r = get_table( db, szTables, &table );
    if( r != ERROR_SUCCESS )
    {
        ERR("table %s not available\n", debugstr_w(szTables));
        return FALSE;
    }

    for( i = 0; i < table->row_count; i++ )
    {
        if( read_table_int( table->data, i, 0, LONG_STR_BYTES ) == table_id )
            return TRUE;
    }

    return FALSE;
}
