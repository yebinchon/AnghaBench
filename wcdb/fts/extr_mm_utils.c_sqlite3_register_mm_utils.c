
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_ANY ;
 int mm_last_error ;
 int sqlite3_create_function_v2 (int *,char*,int ,int ,int *,int ,int *,int *,int *) ;

int sqlite3_register_mm_utils(sqlite3 *db)
{
    return sqlite3_create_function_v2(db, "mm_last_error", 0, SQLITE_ANY, ((void*)0),
                                      mm_last_error, ((void*)0), ((void*)0), ((void*)0));
}
