
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int g_warning (char*,char const*,char const*) ;
 int sqlite3_close (int *) ;
 char* sqlite3_errmsg (int *) ;
 int sqlite3_open (char const*,int **) ;

int
sqlite_open_db (const char *db_path, sqlite3 **db)
{
    int result;
    const char *errmsg;

    result = sqlite3_open (db_path, db);
    if (result) {
        errmsg = sqlite3_errmsg (*db);

        g_warning ("Couldn't open database:'%s', %s\n",
                   db_path, errmsg ? errmsg : "no error given");

        sqlite3_close (*db);
        return -1;
    }

    return 0;
}
