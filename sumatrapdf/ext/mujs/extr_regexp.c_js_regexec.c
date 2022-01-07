
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; int start; int nsub; } ;
struct TYPE_8__ {TYPE_1__* sub; int nsub; } ;
struct TYPE_7__ {int * ep; int sp; } ;
typedef TYPE_2__ Resub ;
typedef TYPE_3__ Reprog ;


 int MAXSUB ;
 int match (int ,char const*,char const*,int,TYPE_2__*,int ) ;

int regexec(Reprog *prog, const char *sp, Resub *sub, int eflags)
{
 Resub scratch;
 int i;

 if (!sub)
  sub = &scratch;

 sub->nsub = prog->nsub;
 for (i = 0; i < MAXSUB; ++i)
  sub->sub[i].sp = sub->sub[i].ep = ((void*)0);

 return match(prog->start, sp, sp, prog->flags | eflags, sub, 0);
}
