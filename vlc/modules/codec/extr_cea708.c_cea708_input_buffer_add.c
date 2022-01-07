
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int capacity; int start; int * ringbuffer; } ;
typedef TYPE_1__ cea708_input_buffer_t ;


 size_t CEA708_SERVICE_INPUT_BUFFER ;
 scalar_t__ cea708_input_buffer_remain (TYPE_1__*) ;

__attribute__((used)) static void cea708_input_buffer_add(cea708_input_buffer_t *ib, uint8_t a)
{
    if( cea708_input_buffer_remain(ib) > 0 )
        ib->ringbuffer[(ib->start + ib->capacity++) % CEA708_SERVICE_INPUT_BUFFER] = a;
}
