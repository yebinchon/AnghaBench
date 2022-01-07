
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {size_t wMaxId; } ;


 size_t MMDRV_MAX ;
 int TRACE (char*,size_t) ;
 int assert (int) ;
 TYPE_1__* llTypes ;

UINT MMDRV_GetNum(UINT type)
{
    TRACE("(%04x)\n", type);
    assert(type < MMDRV_MAX);
    return llTypes[type].wMaxId;
}
