
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* pLogWriter; int pEnv; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_5__ {TYPE_4__* z; } ;
struct TYPE_7__ {TYPE_1__ buf; } ;


 int lsmFree (int ,TYPE_4__*) ;

void lsmLogClose(lsm_db *db){
  if( db->pLogWriter ){
    lsmFree(db->pEnv, db->pLogWriter->buf.z);
    lsmFree(db->pEnv, db->pLogWriter);
    db->pLogWriter = 0;
  }
}
