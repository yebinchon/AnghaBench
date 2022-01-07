
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szPg; int pgno; } ;
typedef TYPE_1__ GState ;



__attribute__((used)) static int ofstInFile(GState *p, int ofst){
  return p->szPg*(p->pgno-1) + ofst;
}
