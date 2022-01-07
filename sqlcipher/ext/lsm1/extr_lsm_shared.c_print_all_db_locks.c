
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* pNext; TYPE_1__* pDatabase; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_6__ {TYPE_2__* pConn; } ;


 int print_db_locks (TYPE_2__*) ;
 int printf (char*,char*,TYPE_2__*) ;

void print_all_db_locks(lsm_db *db){
  lsm_db *p;
  for(p=db->pDatabase->pConn; p; p=p->pNext){
    printf("%s connection %p ", ((p==db)?"*":""), p);
    print_db_locks(p);
  }
}
