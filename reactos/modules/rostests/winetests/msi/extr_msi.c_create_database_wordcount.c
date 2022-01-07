
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int filename; int data; } ;
typedef TYPE_1__ msi_table ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int INT ;
typedef int CHAR ;


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
 int MultiByteToWideChar (int ,int ,int const*,int,int *,int) ;
 int ok (int,char*,scalar_t__) ;
 int write_file (int ,int ,int) ;
 int write_msi_summary_info (int ,int ,int ,char const*) ;

__attribute__((used)) static void create_database_wordcount(const CHAR *name, const msi_table *tables,
                                      int num_tables, INT version, INT wordcount,
                                      const char *template)
{
    MSIHANDLE db;
    UINT r;
    WCHAR *nameW;
    int j, len;

    len = MultiByteToWideChar( CP_ACP, 0, name, -1, ((void*)0), 0 );
    if (!(nameW = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) ))) return;
    MultiByteToWideChar( CP_ACP, 0, name, -1, nameW, len );

    r = MsiOpenDatabaseW(nameW, MSIDBOPEN_CREATE, &db);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);


    for (j = 0; j < num_tables; j++)
    {
        const msi_table *table = &tables[j];

        write_file(table->filename, table->data, (table->size - 1) * sizeof(char));

        r = MsiDatabaseImportA(db, CURR_DIR, table->filename);
        ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

        DeleteFileA(table->filename);
    }

    write_msi_summary_info(db, version, wordcount, template);

    r = MsiDatabaseCommit(db);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    MsiCloseHandle(db);
    HeapFree( GetProcessHeap(), 0, nameW );
}
