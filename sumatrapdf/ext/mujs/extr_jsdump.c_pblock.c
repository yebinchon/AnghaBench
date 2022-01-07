
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int a; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ STM_BLOCK ;
 int assert (int) ;
 int in (int) ;
 int nl () ;
 int pc (char) ;
 int pstmlist (int,int ) ;

__attribute__((used)) static void pblock(int d, js_Ast *block)
{
 assert(block->type == STM_BLOCK);
 pc('{'); nl();
 pstmlist(d, block->a);
 in(d); pc('}');
}
