
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zVfsName; } ;
typedef TYPE_1__ sqlite3rbu ;


 int sqlite3rbu_destroy_vfs (scalar_t__) ;

__attribute__((used)) static void rbuDeleteVfs(sqlite3rbu *p){
  if( p->zVfsName ){
    sqlite3rbu_destroy_vfs(p->zVfsName);
    p->zVfsName = 0;
  }
}
