
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ IoBaseAddress; } ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef int BOOLEAN ;


 int FALSE ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int MIN_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 scalar_t__ ProbeAddressForNIC (scalar_t__) ;
 scalar_t__* ProbeAddressList ;
 int TRUE ;

BOOLEAN NICCheck(
    PNIC_ADAPTER Adapter)







{
    int i;

    NDIS_DbgPrint(MAX_TRACE, ("Called\n"));


    if(ProbeAddressForNIC(Adapter->IoBaseAddress))
    {
        NDIS_DbgPrint(MID_TRACE, ("Found adapter at 0x%x\n", Adapter->IoBaseAddress));
        return TRUE;
    }


    for(i = 0; ProbeAddressList[i]; i++)
    {
        if(ProbeAddressForNIC(ProbeAddressList[i]))
        {
            NDIS_DbgPrint(MID_TRACE, ("Found adapter at address 0x%x\n", ProbeAddressList[i]));
            Adapter->IoBaseAddress = ProbeAddressList[i];
            return TRUE;
        }
    }

    NDIS_DbgPrint(MIN_TRACE,("Adapter NOT found!\n"));
    return FALSE;
}
