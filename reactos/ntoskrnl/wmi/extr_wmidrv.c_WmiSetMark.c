
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PWMI_SET_MARK ;
typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 int UNIMPLEMENTED ;

__attribute__((used)) static
NTSTATUS
WmiSetMark(
    PWMI_SET_MARK Buffer,
    ULONG Length)
{
    UNIMPLEMENTED;
    return STATUS_SUCCESS;
}
