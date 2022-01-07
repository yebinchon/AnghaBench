
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int prepFlags; scalar_t__ zSql; int db; scalar_t__ expmask; } ;
typedef TYPE_1__ Vdbe ;


 int SQLITE_PREPARE_SAVESQL ;
 int assert (int) ;
 scalar_t__ sqlite3DbStrNDup (int ,char const*,int) ;

void sqlite3VdbeSetSql(Vdbe *p, const char *z, int n, u8 prepFlags){
  if( p==0 ) return;
  p->prepFlags = prepFlags;
  if( (prepFlags & SQLITE_PREPARE_SAVESQL)==0 ){
    p->expmask = 0;
  }
  assert( p->zSql==0 );
  p->zSql = sqlite3DbStrNDup(p->db, z, n);
}
