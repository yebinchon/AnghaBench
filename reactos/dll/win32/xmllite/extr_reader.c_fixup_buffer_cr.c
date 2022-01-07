
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* data; int written; scalar_t__ prev_cr; } ;
typedef TYPE_1__ encoded_buffer ;
typedef char WCHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

__attribute__((used)) static void fixup_buffer_cr(encoded_buffer *buffer, int off)
{
    BOOL prev_cr = buffer->prev_cr;
    const WCHAR *src;
    WCHAR *dest;

    src = dest = (WCHAR*)buffer->data + off;
    while ((const char*)src < buffer->data + buffer->written)
    {
        if (*src == '\r')
        {
            *dest++ = '\n';
            src++;
            prev_cr = TRUE;
            continue;
        }
        if(prev_cr && *src == '\n')
            src++;
        else
            *dest++ = *src++;
        prev_cr = FALSE;
    }

    buffer->written = (char*)dest - buffer->data;
    buffer->prev_cr = prev_cr;
    *dest = 0;
}
