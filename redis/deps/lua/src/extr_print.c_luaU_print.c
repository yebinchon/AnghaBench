
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sizep; struct TYPE_8__** p; } ;
typedef TYPE_1__ Proto ;


 int PrintCode (TYPE_1__ const*) ;
 int PrintConstants (TYPE_1__ const*) ;
 int PrintHeader (TYPE_1__ const*) ;
 int PrintLocals (TYPE_1__ const*) ;
 int PrintUpvalues (TYPE_1__ const*) ;

void PrintFunction(const Proto* f, int full)
{
 int i,n=f->sizep;
 PrintHeader(f);
 PrintCode(f);
 if (full)
 {
  PrintConstants(f);
  PrintLocals(f);
  PrintUpvalues(f);
 }
 for (i=0; i<n; i++) PrintFunction(f->p[i],full);
}
