
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct msi_primary_key_record_info {TYPE_1__* rec; scalar_t__ n; } ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int hdr; } ;
struct TYPE_7__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIQUERY ;
typedef int MSIDATABASE ;
typedef int LPCWSTR ;


 scalar_t__ ERROR_INVALID_TABLE ;
 scalar_t__ ERROR_SUCCESS ;
 TYPE_1__* MSI_CreateRecord (scalar_t__) ;
 scalar_t__ MSI_IterateRecords (TYPE_2__*,int ,int ,struct msi_primary_key_record_info*) ;
 scalar_t__ MSI_OpenQuery (int *,TYPE_2__**,char const*,int ) ;
 int TABLE_Exists (int *,int ) ;
 int TRACE (char*,scalar_t__) ;
 int msi_primary_key_iterator ;
 int msiobj_release (int *) ;

UINT MSI_DatabaseGetPrimaryKeys( MSIDATABASE *db,
                LPCWSTR table, MSIRECORD **prec )
{
    static const WCHAR sql[] = {
        's','e','l','e','c','t',' ','*',' ',
        'f','r','o','m',' ','`','_','C','o','l','u','m','n','s','`',' ',
        'w','h','e','r','e',' ',
        '`','T','a','b','l','e','`',' ','=',' ','\'','%','s','\'',0 };
    struct msi_primary_key_record_info info;
    MSIQUERY *query = ((void*)0);
    UINT r;

    if (!TABLE_Exists( db, table ))
        return ERROR_INVALID_TABLE;

    r = MSI_OpenQuery( db, &query, sql, table );
    if( r != ERROR_SUCCESS )
        return r;


    info.n = 0;
    info.rec = 0;
    r = MSI_IterateRecords( query, 0, msi_primary_key_iterator, &info );
    if( r == ERROR_SUCCESS )
    {
        TRACE("Found %d primary keys\n", info.n );


        info.rec = MSI_CreateRecord( info.n );
        info.n = 0;
        r = MSI_IterateRecords( query, 0, msi_primary_key_iterator, &info );
        if( r == ERROR_SUCCESS )
            *prec = info.rec;
        else
            msiobj_release( &info.rec->hdr );
    }
    msiobj_release( &query->hdr );

    return r;
}
