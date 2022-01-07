
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vaddr_t ;
struct TYPE_3__ {scalar_t__* leaves; } ;
typedef TYPE_1__ MmuVsidTree ;


 int printmap (int,scalar_t__) ;

void dumptree(vaddr_t vaddr, MmuVsidTree *tree)
{
    int j;

    for (j = 0; j < 256; j++)
    {
        if (tree->leaves[j])
        {
            printmap(vaddr | (j << 12), tree->leaves[j]);
        }
    }
}
