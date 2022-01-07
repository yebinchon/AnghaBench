
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct update_accum {size_t cUpdates; TYPE_1__* updates; } ;
struct TYPE_2__ {struct TYPE_2__* pbData; } ;
typedef size_t DWORD ;


 int CryptMemFree (TYPE_1__*) ;

__attribute__((used)) static void free_updates(struct update_accum *accum)
{
    DWORD i;

    for (i = 0; i < accum->cUpdates; i++)
        CryptMemFree(accum->updates[i].pbData);
    CryptMemFree(accum->updates);
    accum->updates = ((void*)0);
    accum->cUpdates = 0;
}
