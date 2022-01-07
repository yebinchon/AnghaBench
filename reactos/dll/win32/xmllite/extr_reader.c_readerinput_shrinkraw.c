
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ xmlreaderinput ;
struct TYPE_8__ {int data; int cur; int written; } ;
typedef TYPE_3__ encoded_buffer ;
struct TYPE_6__ {TYPE_3__ encoded; } ;


 int memmove (int,int,int) ;
 int readerinput_get_convlen (TYPE_2__*) ;

__attribute__((used)) static void readerinput_shrinkraw(xmlreaderinput *readerinput, int len)
{
    encoded_buffer *buffer = &readerinput->buffer->encoded;

    if (len == -1)
        len = readerinput_get_convlen(readerinput);

    memmove(buffer->data, buffer->data + buffer->cur + (buffer->written - len), len);

    buffer->written -= len + buffer->cur;


    buffer->cur = 0;
}
