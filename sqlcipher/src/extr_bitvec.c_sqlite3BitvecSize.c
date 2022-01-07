
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int iSize; } ;
typedef TYPE_1__ Bitvec ;



u32 sqlite3BitvecSize(Bitvec *p){
  return p->iSize;
}
