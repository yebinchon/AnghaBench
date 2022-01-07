
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* xInit ) (int ) ;int pArg; } ;
struct TYPE_4__ {int pcache_init; TYPE_1__ pcache; scalar_t__ pcache_fail; } ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int stub1 (int ) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static int wrPCacheInit(void *pArg){
  int rc;
  if( wrapped.pcache_fail ){
    rc = SQLITE_ERROR;
  }else{
    rc = wrapped.pcache.xInit(wrapped.pcache.pArg);
  }
  if( rc==SQLITE_OK ){
    wrapped.pcache_init = 1;
  }
  return rc;
}
