
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {size_t cValues; int lpi; } ;
struct TYPE_6__ {TYPE_1__ MVi; } ;
struct TYPE_7__ {TYPE_2__ Value; } ;
typedef TYPE_3__* LPSPropValue ;


 int IsBadReadPtr (int ,size_t) ;

__attribute__((used)) static inline ULONG PROP_BadArray(LPSPropValue lpProp, size_t elemSize)
{
    return IsBadReadPtr(lpProp->Value.MVi.lpi, lpProp->Value.MVi.cValues * elemSize);
}
