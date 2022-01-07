
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ encoded_buffer ;


 int heap_free (int ) ;

__attribute__((used)) static void free_encoded_buffer(encoded_buffer *buffer)
{
    heap_free(buffer->data);
}
