
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ szMalloc; int flags; TYPE_1__* db; } ;
struct TYPE_8__ {int mutex; } ;
typedef TYPE_2__ Mem ;


 int MEM_Null ;
 int assert (int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int sqlite3VdbeMemRelease (TYPE_2__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

void sqlite3VdbeMemMove(Mem *pTo, Mem *pFrom){
  assert( pFrom->db==0 || sqlite3_mutex_held(pFrom->db->mutex) );
  assert( pTo->db==0 || sqlite3_mutex_held(pTo->db->mutex) );
  assert( pFrom->db==0 || pTo->db==0 || pFrom->db==pTo->db );

  sqlite3VdbeMemRelease(pTo);
  memcpy(pTo, pFrom, sizeof(Mem));
  pFrom->flags = MEM_Null;
  pFrom->szMalloc = 0;
}
