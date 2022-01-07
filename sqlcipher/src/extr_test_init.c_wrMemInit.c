
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xInit ) (int ) ;int pAppData; } ;
struct TYPE_4__ {int mem_init; TYPE_1__ mem; scalar_t__ mem_fail; } ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int stub1 (int ) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static int wrMemInit(void *pAppData){
  int rc;
  if( wrapped.mem_fail ){
    rc = SQLITE_ERROR;
  }else{
    rc = wrapped.mem.xInit(wrapped.mem.pAppData);
  }
  if( rc==SQLITE_OK ){
    wrapped.mem_init = 1;
  }
  return rc;
}
