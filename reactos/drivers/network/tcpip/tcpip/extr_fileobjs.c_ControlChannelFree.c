
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;


 int CONTROL_CHANNEL_TAG ;
 int ExFreePoolWithTag (int ,int ) ;

VOID ControlChannelFree(
    PVOID Object)





{
    ExFreePoolWithTag(Object, CONTROL_CHANNEL_TAG);
}
