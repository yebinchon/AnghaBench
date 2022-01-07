
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Configtable_init () ;
 scalar_t__ basis ;
 scalar_t__* basisend ;
 scalar_t__ current ;
 scalar_t__* currentend ;

void Configlist_init(void){
  current = 0;
  currentend = &current;
  basis = 0;
  basisend = &basis;
  Configtable_init();
  return;
}
