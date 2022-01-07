
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* varname; int (* proc ) (int,int *,int ) ;} ;
typedef int (* PrefProc ) (int,int *,int ) ;
typedef TYPE_1__ PrefOpt ;


 TYPE_1__* gPrefOpts ;
 int printf (char*,...) ;
 int stdout ;
 int stub1 (int,int *,int ) ;

__attribute__((used)) static void
Show1(int t)
{
 PrefOpt *p = &gPrefOpts[t];

 (void) printf("%-30s ", p->varname);
 if (p->proc != (PrefProc) 0)
  (*p->proc)(t, ((void*)0), stdout);
 (void) printf("\n");
}
