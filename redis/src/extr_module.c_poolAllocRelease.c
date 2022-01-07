
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pa_head; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ RedisModulePoolAllocBlock ;
typedef TYPE_2__ RedisModuleCtx ;


 int zfree (TYPE_1__*) ;

void poolAllocRelease(RedisModuleCtx *ctx) {
    RedisModulePoolAllocBlock *head = ctx->pa_head, *next;

    while(head != ((void*)0)) {
        next = head->next;
        zfree(head);
        head = next;
    }
    ctx->pa_head = ((void*)0);
}
