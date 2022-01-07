
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ in_call; scalar_t__ object_state; } ;
typedef TYPE_1__ DefaultHandler ;


 int DefaultHandler_Stop (TYPE_1__*) ;
 scalar_t__ object_state_deferred_close ;

__attribute__((used)) static inline void end_object_call(DefaultHandler *This)
{
    This->in_call--;
    if (This->in_call == 0 && This->object_state == object_state_deferred_close)
        DefaultHandler_Stop( This );
}
