
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__ cmsStage ;
typedef int cmsContext ;


 int cmsStageFree (int ,TYPE_1__*) ;

__attribute__((used)) static
void _RemoveElement(cmsContext ContextID, cmsStage** head)
{
    cmsStage* mpe = *head;
    cmsStage* next = mpe ->Next;
    *head = next;
    cmsStageFree(ContextID, mpe);
}
