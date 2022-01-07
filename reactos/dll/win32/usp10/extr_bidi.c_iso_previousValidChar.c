
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* item; } ;
struct TYPE_4__ {scalar_t__* pcls; } ;
typedef TYPE_2__ IsolatedRun ;


 scalar_t__ BN ;

__attribute__((used)) static inline int iso_previousValidChar(IsolatedRun *iso_run, int index)
{

    if (index <= 0) return -1;
    index --;
    while (index > -1 && *iso_run->item[index].pcls == BN) index--;
    return index;
}
