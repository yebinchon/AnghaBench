
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_STATIC ;
 int g_errmsg_buffer ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static void mm_last_error(sqlite3_context *db, int argc, sqlite3_value **argv)
{
    sqlite3_result_text(db, g_errmsg_buffer, -1, SQLITE_STATIC);
}
