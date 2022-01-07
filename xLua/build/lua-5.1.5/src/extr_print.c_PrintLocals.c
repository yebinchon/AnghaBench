
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sizelocvars; TYPE_1__* locvars; } ;
struct TYPE_5__ {int startpc; int endpc; int varname; } ;
typedef TYPE_2__ Proto ;


 int VOID (TYPE_2__ const*) ;
 char* getstr (int ) ;
 int printf (char*,int,char*,...) ;

__attribute__((used)) static void PrintLocals(const Proto* f)
{
 int i,n=f->sizelocvars;
 printf("locals (%d) for %p:\n",n,VOID(f));
 for (i=0; i<n; i++)
 {
  printf("\t%d\t%s\t%d\t%d\n",
  i,getstr(f->locvars[i].varname),f->locvars[i].startpc+1,f->locvars[i].endpc+1);
 }
}
