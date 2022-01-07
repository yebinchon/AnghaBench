
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_4__ {TYPE_1__* elem; } ;
typedef TYPE_2__ fire_readystatechange_task_t ;
struct TYPE_3__ {int IHTMLScriptElement_iface; } ;


 int IHTMLScriptElement_Release (int *) ;

__attribute__((used)) static void fire_readystatechange_task_destr(task_t *_task)
{
    fire_readystatechange_task_t *task = (fire_readystatechange_task_t*)_task;

    IHTMLScriptElement_Release(&task->elem->IHTMLScriptElement_iface);
}
