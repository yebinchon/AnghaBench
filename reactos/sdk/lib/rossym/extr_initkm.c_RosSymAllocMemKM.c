
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int PVOID ;


 int ExAllocatePoolWithTag (int ,int ,int ) ;
 int NonPagedPool ;
 int TAG_ROSSYM ;

__attribute__((used)) static PVOID
RosSymAllocMemKM(ULONG_PTR Size)
{
  return ExAllocatePoolWithTag(NonPagedPool, Size, TAG_ROSSYM);
}
