
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w_height; } ;


 TYPE_1__* curwin ;
 int p_sj ;

__attribute__((used)) static int
scrolljump_value()
{
    if (p_sj >= 0)
 return (int)p_sj;
    return (curwin->w_height * -p_sj) / 100;
}
