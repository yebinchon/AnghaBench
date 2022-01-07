
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int length; TYPE_1__* item; } ;
struct TYPE_4__ {scalar_t__* pcls; } ;
typedef TYPE_2__ IsolatedRun ;


 scalar_t__ BN ;

__attribute__((used)) static inline int iso_nextValidChar(IsolatedRun *iso_run, int index)
{
    if (index >= (iso_run->length-1)) return -1;
    index ++;
    while (index < iso_run->length && *iso_run->item[index].pcls == BN) index++;
    if (index == iso_run->length) return -1;
    return index;
}
