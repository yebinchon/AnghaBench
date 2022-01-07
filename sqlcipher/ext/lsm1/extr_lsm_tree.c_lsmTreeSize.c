
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nByte; } ;
struct TYPE_6__ {TYPE_1__ root; } ;
struct TYPE_7__ {TYPE_2__ treehdr; } ;
typedef TYPE_3__ lsm_db ;



int lsmTreeSize(lsm_db *pDb){
  return pDb->treehdr.root.nByte;
}
