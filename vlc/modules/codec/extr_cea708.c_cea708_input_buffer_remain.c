
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ capacity; } ;
typedef TYPE_1__ cea708_input_buffer_t ;


 scalar_t__ CEA708_SERVICE_INPUT_BUFFER ;

__attribute__((used)) static uint8_t cea708_input_buffer_remain(const cea708_input_buffer_t *ib)
{
    return CEA708_SERVICE_INPUT_BUFFER - ib->capacity;
}
