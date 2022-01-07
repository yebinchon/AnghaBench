
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int hints; } ;
typedef TYPE_1__ BtCursor ;



int sqlite3BtreeCursorHasHint(BtCursor *pCsr, unsigned int mask){
  return (pCsr->hints & mask)!=0;
}
