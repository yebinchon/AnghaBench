
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;


 int ExFreePool (int ) ;

void free(PVOID Block)
{
    ExFreePool(Block);
}
