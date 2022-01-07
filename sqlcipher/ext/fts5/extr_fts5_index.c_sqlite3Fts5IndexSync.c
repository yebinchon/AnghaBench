
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rc; } ;
typedef TYPE_1__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5CloseReader (TYPE_1__*) ;
 int fts5IndexFlush (TYPE_1__*) ;
 int fts5IndexReturn (TYPE_1__*) ;

int sqlite3Fts5IndexSync(Fts5Index *p){
  assert( p->rc==SQLITE_OK );
  fts5IndexFlush(p);
  fts5CloseReader(p);
  return fts5IndexReturn(p);
}
