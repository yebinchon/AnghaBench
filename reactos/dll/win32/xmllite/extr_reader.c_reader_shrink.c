
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* input; } ;
typedef TYPE_3__ xmlreader ;
struct TYPE_9__ {int cur; int written; int * data; } ;
typedef TYPE_4__ encoded_buffer ;
typedef scalar_t__ WCHAR ;
struct TYPE_7__ {TYPE_1__* buffer; } ;
struct TYPE_6__ {TYPE_4__ utf16; } ;


 int memmove (int *,scalar_t__*,int) ;

__attribute__((used)) static void reader_shrink(xmlreader *reader)
{
    encoded_buffer *buffer = &reader->input->buffer->utf16;


    if (buffer->cur*sizeof(WCHAR) > buffer->written / 2)
    {
        buffer->written -= buffer->cur*sizeof(WCHAR);
        memmove(buffer->data, (WCHAR*)buffer->data + buffer->cur, buffer->written);
        buffer->cur = 0;
        *(WCHAR*)&buffer->data[buffer->written] = 0;
    }
}
