
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* doc_obj; } ;
struct TYPE_4__ {int update; scalar_t__ hwnd; } ;
typedef TYPE_2__ HTMLDocument ;
typedef int DWORD ;


 int SetTimer (scalar_t__,int ,int,int *) ;
 int TIMER_ID ;

void update_doc(HTMLDocument *This, DWORD flags)
{
    if(!This->doc_obj->update && This->doc_obj->hwnd)
        SetTimer(This->doc_obj->hwnd, TIMER_ID, 100, ((void*)0));

    This->doc_obj->update |= flags;
}
