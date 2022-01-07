
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* input; } ;
typedef TYPE_3__ xmlreader ;
struct TYPE_11__ {int cur; } ;
typedef TYPE_4__ encoded_buffer ;
typedef scalar_t__ WCHAR ;
struct TYPE_9__ {TYPE_1__* buffer; } ;
struct TYPE_8__ {TYPE_4__ utf16; } ;


 scalar_t__* reader_get_ptr (TYPE_3__*) ;
 int reader_update_position (TYPE_3__*,scalar_t__ const) ;

__attribute__((used)) static void reader_skipn(xmlreader *reader, int n)
{
    encoded_buffer *buffer = &reader->input->buffer->utf16;
    const WCHAR *ptr;

    while (*(ptr = reader_get_ptr(reader)) && n--)
    {
        reader_update_position(reader, *ptr);
        buffer->cur++;
    }
}
