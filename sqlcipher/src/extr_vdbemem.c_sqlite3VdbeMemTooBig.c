
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nZero; } ;
struct TYPE_7__ {int flags; int n; TYPE_2__* db; TYPE_1__ u; } ;
struct TYPE_6__ {int* aLimit; } ;
typedef TYPE_3__ Mem ;


 int MEM_Blob ;
 int MEM_Str ;
 int MEM_Zero ;
 size_t SQLITE_LIMIT_LENGTH ;
 int assert (int) ;

int sqlite3VdbeMemTooBig(Mem *p){
  assert( p->db!=0 );
  if( p->flags & (MEM_Str|MEM_Blob) ){
    int n = p->n;
    if( p->flags & MEM_Zero ){
      n += p->u.nZero;
    }
    return n>p->db->aLimit[SQLITE_LIMIT_LENGTH];
  }
  return 0;
}
