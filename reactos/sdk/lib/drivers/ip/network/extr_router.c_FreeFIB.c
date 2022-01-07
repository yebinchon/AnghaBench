
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;


 int ExFreePoolWithTag (int ,int ) ;
 int FIB_TAG ;

VOID FreeFIB(
    PVOID Object)





{
    ExFreePoolWithTag(Object, FIB_TAG);
}
