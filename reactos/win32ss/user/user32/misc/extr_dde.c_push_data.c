
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_message {int size; int count; void const* data; } ;



__attribute__((used)) static inline void push_data( struct packed_message *data, const void *ptr, int size )
{
    data->data = ptr;
    data->size = size;
    data->count++;
}
