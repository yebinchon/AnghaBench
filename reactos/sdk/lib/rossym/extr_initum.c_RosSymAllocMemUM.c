
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int PVOID ;


 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int ) ;

__attribute__((used)) static PVOID
RosSymAllocMemUM(ULONG_PTR Size)
{
  return HeapAlloc(GetProcessHeap(), 0, Size);
}
