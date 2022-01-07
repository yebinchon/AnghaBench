
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rtl; char const* start; char const* end; char const* s; int script; int language; int small_caps; int * next_font; int * font; int * base_font; int * hb_buf; int * ctx; } ;
typedef TYPE_1__ string_walker ;
typedef int hb_buffer_t ;
typedef int fz_font ;
typedef int fz_context ;



__attribute__((used)) static void init_string_walker(fz_context *ctx, string_walker *walker, hb_buffer_t *hb_buf, int rtl, fz_font *font, int script, int language, int small_caps, const char *text)
{
 walker->ctx = ctx;
 walker->hb_buf = hb_buf;
 walker->rtl = rtl;
 walker->start = text;
 walker->end = text;
 walker->s = text;
 walker->base_font = font;
 walker->script = script;
 walker->language = language;
 walker->font = ((void*)0);
 walker->next_font = ((void*)0);
 walker->small_caps = small_caps;
}
