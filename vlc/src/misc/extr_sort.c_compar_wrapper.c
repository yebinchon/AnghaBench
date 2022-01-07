
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* compar ) (void const*,void const*,int ) ;int arg; } ;


 TYPE_1__ state ;
 int stub1 (void const*,void const*,int ) ;

__attribute__((used)) static int compar_wrapper(const void *a, const void *b)
{
    return state.compar(a, b, state.arg);
}
