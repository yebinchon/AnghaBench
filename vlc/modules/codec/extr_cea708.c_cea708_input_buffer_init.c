
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ start; scalar_t__ capacity; } ;
typedef TYPE_1__ cea708_input_buffer_t ;



__attribute__((used)) static void cea708_input_buffer_init(cea708_input_buffer_t *ib)
{
    ib->capacity = 0;
    ib->start = 0;
}
