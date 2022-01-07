
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t capacity; int * data; } ;
typedef TYPE_1__ data_buffer_t ;


 scalar_t__ malloc (size_t const) ;

data_buffer_t data_buffer_create(size_t const capacity) {
    data_buffer_t buffer = {};

    buffer.data = (uint8_t*)malloc(capacity);
    if (buffer.data == ((void*)0))
        return buffer;
    buffer.capacity = capacity;
    return buffer;
}
