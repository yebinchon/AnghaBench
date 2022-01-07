
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NBCmdQueue {scalar_t__ head; } ;
typedef scalar_t__ PNCB ;


 scalar_t__* NEXT_PTR (scalar_t__) ;

__attribute__((used)) static PNCB *NBCmdQueueFindNBC(struct NBCmdQueue *queue, PNCB ncb)
{
    PNCB *ret;

    if (!queue || !ncb)
        ret = ((void*)0);
    else
    {
        ret = &queue->head;
        while (ret && *ret != ncb)
            ret = NEXT_PTR(*ret);
    }
    return ret;
}
