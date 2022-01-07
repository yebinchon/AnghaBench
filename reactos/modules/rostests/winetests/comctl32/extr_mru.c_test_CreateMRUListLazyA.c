
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ret; int mruA; } ;
typedef TYPE_1__ create_lazya_t ;
typedef int MRUINFOA ;
typedef int * HANDLE ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* create_lazyA ;
 int ok (int ,char*,int,int *) ;
 int * pCreateMRUListLazyA (int *,int ,int ,int ) ;
 int pFreeMRUList (int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_CreateMRUListLazyA(void)
{
    int i;

    if (!pCreateMRUListLazyA || !pFreeMRUList)
    {
        win_skip("CreateMRUListLazyA or FreeMRUList entry points not found\n");
        return;
    }

    for (i = 0; i < ARRAY_SIZE(create_lazyA); i++)
    {
        const create_lazya_t *ptr = &create_lazyA[i];
        HANDLE hMRU;

        hMRU = pCreateMRUListLazyA((MRUINFOA*)&ptr->mruA, 0, 0, 0);
        if (ptr->ret)
        {
            ok(hMRU != ((void*)0), "%d: got %p\n", i, hMRU);
            pFreeMRUList(hMRU);
        }
        else
            ok(hMRU == ((void*)0), "%d: got %p\n", i, hMRU);
    }
}
