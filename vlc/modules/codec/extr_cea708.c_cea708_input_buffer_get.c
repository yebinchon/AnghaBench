
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int start; int capacity; } ;
typedef TYPE_1__ cea708_input_buffer_t ;


 int CEA708_SERVICE_INPUT_BUFFER ;
 int cea708_input_buffer_peek (TYPE_1__*,int ) ;

__attribute__((used)) static uint8_t cea708_input_buffer_get(cea708_input_buffer_t *ib)
{
    uint8_t a = cea708_input_buffer_peek( ib, 0 );
    ib->start = (ib->start + 1) % CEA708_SERVICE_INPUT_BUFFER;
    ib->capacity--;
    return a;
}
