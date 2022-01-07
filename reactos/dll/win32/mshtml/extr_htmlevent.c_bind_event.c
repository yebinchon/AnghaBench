
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int eventid_t ;
struct TYPE_10__ {TYPE_2__* data; } ;
struct TYPE_9__ {TYPE_4__ dispex; } ;
struct TYPE_8__ {TYPE_1__* vtbl; } ;
struct TYPE_7__ {int (* bind_event ) (TYPE_4__*,int ) ;} ;
typedef TYPE_3__ EventTarget ;


 int FIXME (char*,TYPE_3__*) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static void bind_event(EventTarget *event_target, eventid_t eid)
{
    if(event_target->dispex.data->vtbl->bind_event)
        event_target->dispex.data->vtbl->bind_event(&event_target->dispex, eid);
    else
        FIXME("Unsupported event binding on target %p\n", event_target);
}
