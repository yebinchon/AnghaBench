
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ xmlreaderinput ;
struct TYPE_8__ {int written; int cur; } ;
typedef TYPE_3__ encoded_buffer ;
struct TYPE_6__ {scalar_t__ code_page; TYPE_3__ encoded; } ;


 scalar_t__ CP_UTF8 ;
 int TRACE (char*,int) ;
 int readerinput_get_utf8_convlen (TYPE_2__*) ;

__attribute__((used)) static int readerinput_get_convlen(xmlreaderinput *readerinput)
{
    encoded_buffer *buffer = &readerinput->buffer->encoded;
    int len;

    if (readerinput->buffer->code_page == CP_UTF8)
        len = readerinput_get_utf8_convlen(readerinput);
    else
        len = buffer->written;

    TRACE("%d\n", len - buffer->cur);
    return len - buffer->cur;
}
