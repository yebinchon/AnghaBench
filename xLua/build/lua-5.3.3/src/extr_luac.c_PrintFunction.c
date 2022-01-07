
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sizep; struct TYPE_6__** p; } ;
typedef TYPE_1__ Proto ;


 int PrintCode (TYPE_1__ const*) ;
 int PrintDebug (TYPE_1__ const*) ;
 int PrintHeader (TYPE_1__ const*) ;

__attribute__((used)) static void PrintFunction(const Proto* f, int full)
{
 int i,n=f->sizep;
 PrintHeader(f);
 PrintCode(f);
 if (full) PrintDebug(f);
 for (i=0; i<n; i++) PrintFunction(f->p[i],full);
}
