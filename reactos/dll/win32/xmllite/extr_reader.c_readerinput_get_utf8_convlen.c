
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ xmlreaderinput ;
struct TYPE_7__ {int written; int* data; } ;
typedef TYPE_3__ encoded_buffer ;
struct TYPE_5__ {TYPE_3__ encoded; } ;



__attribute__((used)) static int readerinput_get_utf8_convlen(xmlreaderinput *readerinput)
{
    encoded_buffer *buffer = &readerinput->buffer->encoded;
    int len = buffer->written;


    if (!(buffer->data[len-1] & 0x80)) return len;


    while (--len && !(buffer->data[len] & 0xc0))
        ;

    return len;
}
