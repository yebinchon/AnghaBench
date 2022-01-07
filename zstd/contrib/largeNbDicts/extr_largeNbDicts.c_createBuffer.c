
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ptr; size_t capacity; scalar_t__ size; } ;
typedef TYPE_1__ buffer_t ;


 int assert (int) ;
 TYPE_1__ kBuffNull ;
 void* malloc (size_t) ;

__attribute__((used)) static buffer_t createBuffer(size_t capacity)
{
    assert(capacity > 0);
    void* const ptr = malloc(capacity);
    if (ptr==((void*)0)) return kBuffNull;

    buffer_t buffer;
    buffer.ptr = ptr;
    buffer.capacity = capacity;
    buffer.size = 0;
    return buffer;
}
