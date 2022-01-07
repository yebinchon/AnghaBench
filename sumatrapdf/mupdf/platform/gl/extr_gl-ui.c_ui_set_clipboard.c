
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clipboard_buffer ;
 int ctx ;
 int fz_free (int ,int ) ;
 int fz_strdup (int ,char const*) ;

void ui_set_clipboard(const char *buf)
{
 fz_free(ctx, clipboard_buffer);
 clipboard_buffer = fz_strdup(ctx, buf);
}
