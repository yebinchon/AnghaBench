
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int expmask; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_4__ {int flags; } ;


 int SQLITE_EnableQPSG ;
 int assert (int) ;

void sqlite3VdbeSetVarmask(Vdbe *v, int iVar){
  assert( iVar>0 );
  assert( (v->db->flags & SQLITE_EnableQPSG)==0 );
  if( iVar>=32 ){
    v->expmask |= 0x80000000;
  }else{
    v->expmask |= ((u32)1 << (iVar-1));
  }
}
