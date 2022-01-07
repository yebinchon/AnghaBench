
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int fulltextModule ;
 int sqlite3_create_module (int *,char*,int *,int ) ;

int fulltext_init(sqlite3 *db){
 return sqlite3_create_module(db, "fulltext", &fulltextModule, 0);
}
