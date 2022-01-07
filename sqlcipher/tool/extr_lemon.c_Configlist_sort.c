
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int next; } ;


 int Configcmp ;
 struct config* current ;
 scalar_t__ currentend ;
 scalar_t__ msort (char*,char**,int ) ;

void Configlist_sort(void){
  current = (struct config*)msort((char*)current,(char**)&(current->next),
                                  Configcmp);
  currentend = 0;
  return;
}
