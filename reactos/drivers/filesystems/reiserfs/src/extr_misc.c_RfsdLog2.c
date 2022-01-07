
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int ASSERT (int) ;
 int PAGED_CODE () ;

ULONG
RfsdLog2(ULONG Value)
{
    ULONG Order = 0;

    PAGED_CODE();

    ASSERT(Value > 0);

    while (Value) {
        Order++;
        Value >>= 1;
    }

    return (Order - 1);
}
