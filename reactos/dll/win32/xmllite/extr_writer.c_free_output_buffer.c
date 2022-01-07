
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct output_buffer {scalar_t__ written; scalar_t__ allocated; int * data; } ;
struct TYPE_4__ {struct output_buffer buffer; } ;
typedef TYPE_1__ xmlwriteroutput ;


 int writeroutput_free (TYPE_1__*,int *) ;

__attribute__((used)) static void free_output_buffer(xmlwriteroutput *output)
{
    struct output_buffer *buffer = &output->buffer;
    writeroutput_free(output, buffer->data);
    buffer->data = ((void*)0);
    buffer->allocated = 0;
    buffer->written = 0;
}
