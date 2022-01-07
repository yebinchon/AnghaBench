
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nSample; scalar_t__ pnBytesFreed; TYPE_2__* aSample; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_10__ {struct TYPE_10__* p; } ;
typedef TYPE_2__ IndexSample ;
typedef TYPE_1__ Index ;


 int UNUSED_PARAMETER (TYPE_1__*) ;
 int sqlite3DbFree (TYPE_1__*,TYPE_2__*) ;

void sqlite3DeleteIndexSamples(sqlite3 *db, Index *pIdx){
  UNUSED_PARAMETER(db);
  UNUSED_PARAMETER(pIdx);

}
