
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* zFile; } ;
struct TYPE_6__ {TYPE_1__ cds; } ;
typedef TYPE_2__ ZipfileEntry ;


 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void zipfileEntryFree(ZipfileEntry *p){
  if( p ){
    sqlite3_free(p->cds.zFile);
    sqlite3_free(p);
  }
}
