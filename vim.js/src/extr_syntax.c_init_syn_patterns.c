
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int synpat_T ;
struct TYPE_6__ {TYPE_2__* w_s; } ;
struct TYPE_4__ {int ga_itemsize; int ga_growsize; } ;
struct TYPE_5__ {TYPE_1__ b_syn_patterns; } ;


 TYPE_3__* curwin ;

__attribute__((used)) static void
init_syn_patterns()
{
    curwin->w_s->b_syn_patterns.ga_itemsize = sizeof(synpat_T);
    curwin->w_s->b_syn_patterns.ga_growsize = 10;
}
