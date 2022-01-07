
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_4__* flow; int pool; int ctx; TYPE_1__* buffer; } ;
typedef TYPE_3__ bidi_data ;
struct TYPE_6__ {int text; } ;
struct TYPE_8__ {scalar_t__ type; int bidi_level; int script; struct TYPE_8__* next; TYPE_2__ content; } ;
struct TYPE_5__ {int const* data; } ;


 scalar_t__ FLOW_ANCHOR ;
 scalar_t__ FLOW_BREAK ;
 scalar_t__ FLOW_SBREAK ;
 scalar_t__ FLOW_SHYPHEN ;
 scalar_t__ FLOW_SPACE ;
 size_t fz_utflen (int ) ;
 int split_flow (int ,int ,TYPE_4__*,size_t) ;

__attribute__((used)) static void fragment_cb(const uint32_t *fragment,
   size_t fragment_len,
   int bidi_level,
   int script,
   void *arg)
{
 bidi_data *data = (bidi_data *)arg;
 size_t fragment_offset = fragment - data->buffer->data;



 while (fragment_len > 0)
 {
  size_t len;

  if (data->flow->type == FLOW_SPACE)
  {
   len = 1;
  }
  else if (data->flow->type == FLOW_BREAK || data->flow->type == FLOW_SBREAK ||
    data->flow->type == FLOW_SHYPHEN || data->flow->type == FLOW_ANCHOR)
  {
   len = 0;
  }
  else
  {

   len = fz_utflen(data->flow->content.text);
   if (len > fragment_len)
   {

    (void)split_flow(data->ctx, data->pool, data->flow, fragment_len);
    len = fz_utflen(data->flow->content.text);
   }
  }


  data->flow->bidi_level = bidi_level;
  data->flow->script = script;
  data->flow = data->flow->next;
  fragment_offset += len;
  fragment_len -= len;
 }
}
