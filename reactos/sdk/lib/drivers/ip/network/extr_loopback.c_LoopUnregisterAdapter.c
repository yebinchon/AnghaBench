
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLAN_ADAPTER ;
typedef int NDIS_STATUS ;


 int IPDestroyInterface (int *) ;
 int IPUnregisterInterface (int *) ;
 int * Loopback ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int NDIS_STATUS_SUCCESS ;
 int TI_DbgPrint (int ,char*) ;

NDIS_STATUS LoopUnregisterAdapter(
  PLAN_ADAPTER Adapter)
{
  TI_DbgPrint(MID_TRACE, ("Called.\n"));

  if (Loopback != ((void*)0))
    {
      IPUnregisterInterface(Loopback);
      IPDestroyInterface(Loopback);
      Loopback = ((void*)0);
    }

  TI_DbgPrint(MAX_TRACE, ("Leaving.\n"));

  return NDIS_STATUS_SUCCESS;
}
