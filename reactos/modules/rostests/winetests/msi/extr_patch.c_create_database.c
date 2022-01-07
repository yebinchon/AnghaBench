
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_table {int size; int filename; int data; } ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 int CP_ACP ;
 int CURR_DIR ;
 int DeleteFileA (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MSIDBOPEN_CREATE ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseCommit (int ) ;
 scalar_t__ MsiDatabaseImportA (int ,int ,int ) ;
 scalar_t__ MsiOpenDatabaseW (int *,int ,int *) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int ok (int,char*,scalar_t__) ;
 int set_suminfo (int *) ;
 int write_file (int ,int ,int) ;

__attribute__((used)) static void create_database( const char *filename, const struct msi_table *tables, UINT num_tables )
{
    MSIHANDLE hdb;
    UINT r, i;
    WCHAR *filenameW;
    int len;

    len = MultiByteToWideChar( CP_ACP, 0, filename, -1, ((void*)0), 0 );
    if (!(filenameW = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) ))) return;
    MultiByteToWideChar( CP_ACP, 0, filename, -1, filenameW, len );

    r = MsiOpenDatabaseW( filenameW, MSIDBOPEN_CREATE, &hdb );
    ok(r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r);


    for (i = 0; i < num_tables; i++)
    {
        const struct msi_table *table = &tables[i];

        write_file( table->filename, table->data, (table->size - 1) * sizeof(char) );

        r = MsiDatabaseImportA( hdb, CURR_DIR, table->filename );
        ok(r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r);

        DeleteFileA( table->filename );
    }

    r = MsiDatabaseCommit( hdb );
    ok(r == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", r);

    MsiCloseHandle( hdb );
    set_suminfo( filenameW );
    HeapFree( GetProcessHeap(), 0, filenameW );
}
