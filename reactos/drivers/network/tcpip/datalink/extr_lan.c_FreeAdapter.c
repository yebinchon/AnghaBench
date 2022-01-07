
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PLAN_ADAPTER ;


 int ExFreePoolWithTag (int ,int ) ;
 int LAN_ADAPTER_TAG ;

VOID FreeAdapter(
    PLAN_ADAPTER Adapter)





{
    ExFreePoolWithTag(Adapter, LAN_ADAPTER_TAG);
}
