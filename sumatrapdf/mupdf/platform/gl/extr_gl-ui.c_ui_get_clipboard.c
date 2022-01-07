
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* clipboard_buffer ;

const char *ui_get_clipboard(void)
{
 return clipboard_buffer;
}
