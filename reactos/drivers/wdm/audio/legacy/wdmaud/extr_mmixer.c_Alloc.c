
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PVOID ;


 int AllocateItem (int ,int ) ;
 int NonPagedPool ;

PVOID Alloc(ULONG NumBytes)
{
    return AllocateItem(NonPagedPool, NumBytes);
}
