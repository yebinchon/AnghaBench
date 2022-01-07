
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dtv_delivery_t ;


 scalar_t__ DTV_DELIVERY_NONE ;
 int ctz (scalar_t__) ;

__attribute__((used)) static inline dtv_delivery_t GetSingleDelivery( dtv_delivery_t d )
{
    if( d == 0 )
        return DTV_DELIVERY_NONE;
    else
        return 1 << ctz( d );
}
