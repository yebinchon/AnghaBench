
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {struct TYPE_3__* NextKey; } ;
typedef TYPE_1__* PB_TREE_KEY ;



ULONG
CountBTreeKeys(PB_TREE_KEY FirstKey)
{
    ULONG Count = 0;
    PB_TREE_KEY Current = FirstKey;

    while (Current != ((void*)0))
    {
        Count++;
        Current = Current->NextKey;
    }

    return Count;
}
