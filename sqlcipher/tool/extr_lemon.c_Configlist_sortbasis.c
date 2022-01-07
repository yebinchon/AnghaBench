
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config {int dummy; } ;
struct TYPE_2__ {int bp; } ;


 int Configcmp ;
 struct config* basis ;
 scalar_t__ basisend ;
 TYPE_1__* current ;
 scalar_t__ msort (char*,char**,int ) ;

void Configlist_sortbasis(void){
  basis = (struct config*)msort((char*)current,(char**)&(current->bp),
                                Configcmp);
  basisend = 0;
  return;
}
