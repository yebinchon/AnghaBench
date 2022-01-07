
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fifo; } ;
typedef TYPE_1__ vout_display_sys_t ;
typedef int key ;
struct TYPE_7__ {int p_buffer; } ;
typedef TYPE_2__ block_t ;


 TYPE_2__* block_Alloc (int) ;
 int block_FifoPut (int ,TYPE_2__*) ;
 scalar_t__ likely (int ) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static void VoutDisplayEventKey(vout_display_sys_t *sys, int key)
{
    block_t *event = block_Alloc(sizeof (key));
    if (likely(event != ((void*)0))) {
        memcpy(event->p_buffer, &key, sizeof (key));
        block_FifoPut(sys->fifo, event);
    }
}
