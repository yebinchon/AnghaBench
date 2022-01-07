
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t len; size_t cap; int* data; } ;
typedef TYPE_2__ uni_buf ;
typedef int fz_pool ;
struct TYPE_8__ {char* text; } ;
struct TYPE_10__ {int bidi_level; int type; struct TYPE_10__* next; TYPE_1__ content; } ;
typedef TYPE_3__ fz_html_flow ;
typedef int fz_context ;
typedef int fz_bidi_direction ;
struct TYPE_11__ {TYPE_2__* buffer; TYPE_3__* flow; int * pool; int * ctx; } ;
typedef TYPE_4__ bidi_data ;
 int fragment_cb ;
 int fz_bidi_fragment_text (int *,int*,size_t,int *,int ,TYPE_4__*,int ) ;
 int fz_chartorune (int*,char const*) ;
 int* fz_realloc_array (int *,int*,size_t,int ) ;
 size_t fz_utflen (char*) ;
 int uint32_t ;

__attribute__((used)) static fz_bidi_direction
detect_flow_directionality(fz_context *ctx, fz_pool *pool, uni_buf *buffer, fz_bidi_direction bidi_dir, fz_html_flow *flow)
{
 fz_html_flow *end = flow;
 bidi_data data;

 while (end)
 {
  int level = end->bidi_level;



  buffer->len = 0;
  while (end && (level & 1) == (end->bidi_level & 1))
  {
   size_t len = 0;
   const char *text = "";
   int broken = 0;

   switch (end->type)
   {
   case 128:
    len = fz_utflen(end->content.text);
    text = end->content.text;
    break;
   case 129:
    len = 1;
    text = " ";
    break;
   case 130:
   case 131:
    break;
   case 133:
   case 132:
    broken = 1;
    break;
   }

   end = end->next;

   if (broken)
    break;


   if (buffer->len + len > buffer->cap)
   {
    size_t newcap = buffer->cap;
    if (newcap < 128)
     newcap = 128;

    while (newcap < buffer->len + len)
     newcap = (newcap * 3) / 2;

    buffer->data = fz_realloc_array(ctx, buffer->data, newcap, uint32_t);
    buffer->cap = newcap;
   }


   while (*text)
   {
    int rune;
    text += fz_chartorune(&rune, text);
    buffer->data[buffer->len++] = rune;
   }
  }


  data.ctx = ctx;
  data.pool = pool;
  data.flow = flow;
  data.buffer = buffer;
  fz_bidi_fragment_text(ctx, buffer->data, buffer->len, &bidi_dir, fragment_cb, &data, 0 );
  flow = end;
 }
 return bidi_dir;
}
