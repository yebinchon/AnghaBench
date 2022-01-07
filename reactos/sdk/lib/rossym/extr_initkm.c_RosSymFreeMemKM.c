
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;


 int ExFreePool (int ) ;

__attribute__((used)) static VOID
RosSymFreeMemKM(PVOID Area)
{
  ExFreePool(Area);
}
