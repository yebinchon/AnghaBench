
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIHANDLE ;
typedef int LPCSTR ;


 int CURR_DIR ;
 int DeleteFileA (char*) ;
 int MsiDatabaseImportA (int ,int ,char*) ;
 int lstrlenA (int ) ;
 int write_file (char*,int ,int) ;

__attribute__((used)) static UINT add_table_to_db(MSIHANDLE hdb, LPCSTR table_data)
{
    UINT r;

    write_file("temp_file", table_data, (lstrlenA(table_data) - 1) * sizeof(char));
    r = MsiDatabaseImportA(hdb, CURR_DIR, "temp_file");
    DeleteFileA("temp_file");

    return r;
}
