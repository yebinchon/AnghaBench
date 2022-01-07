
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_8__ ;
typedef struct TYPE_46__ TYPE_4__ ;
typedef struct TYPE_45__ TYPE_3__ ;
typedef struct TYPE_44__ TYPE_2__ ;
typedef struct TYPE_43__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_47__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_45__ {int order_type; int text2; int ellipse2; int ellipse; int polyline; int polygon2; int polygon; int triblt; int memblt; int desksave; int rect; int line; int screenblt; int patblt; int destblt; TYPE_8__ bounds; } ;
struct TYPE_43__ {TYPE_3__ order_state; } ;
struct TYPE_46__ {scalar_t__ next_packet; TYPE_1__ orders; } ;
struct TYPE_44__ {scalar_t__ p; } ;
typedef TYPE_2__* STREAM ;
typedef TYPE_3__ RDP_ORDER_STATE ;
typedef TYPE_4__ RDPCLIENT ;
typedef int BOOL ;


 int RDP_ORDER_BOUNDS ;
 int RDP_ORDER_CHANGE ;
 int RDP_ORDER_DELTA ;




 int RDP_ORDER_LASTBOUNDS ;
 int RDP_ORDER_SECONDARY ;
 int RDP_ORDER_STANDARD ;


 int error (char*,...) ;
 int in_uint8 (TYPE_2__*,int) ;
 int process_desksave (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_destblt (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_ellipse (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_ellipse2 (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_line (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_memblt (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_patblt (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_polygon (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_polygon2 (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_polyline (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_rect (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_screenblt (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_secondary_order (TYPE_4__*,TYPE_2__*) ;
 int process_text2 (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int process_triblt (TYPE_4__*,TYPE_2__*,int *,int ,int) ;
 int rdp_in_present (TYPE_2__*,int *,int,int) ;
 int rdp_parse_bounds (TYPE_2__*,TYPE_8__*) ;
 int ui_reset_clip (TYPE_4__*) ;
 int ui_set_clip (TYPE_4__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int unimpl (char*,int) ;

void
process_orders(RDPCLIENT * This, STREAM s, uint16 num_orders)
{
 RDP_ORDER_STATE *os = &This->orders.order_state;
 uint32 present;
 uint8 order_flags;
 int size, processed = 0;
 BOOL delta;

 while (processed < num_orders)
 {
  in_uint8(s, order_flags);

  if (!(order_flags & RDP_ORDER_STANDARD))
  {
   error("order parsing failed\n");
   break;
  }

  if (order_flags & RDP_ORDER_SECONDARY)
  {
   process_secondary_order(This, s);
  }
  else
  {
   if (order_flags & RDP_ORDER_CHANGE)
   {
    in_uint8(s, os->order_type);
   }

   switch (os->order_type)
   {
    case 128:
    case 129:
     size = 3;
     break;

    case 135:
    case 136:
    case 137:
    case 133:
    case 138:
     size = 2;
     break;

    default:
     size = 1;
   }

   rdp_in_present(s, &present, order_flags, size);

   if (order_flags & RDP_ORDER_BOUNDS)
   {
    if (!(order_flags & RDP_ORDER_LASTBOUNDS))
     rdp_parse_bounds(s, &os->bounds);

    ui_set_clip(This, os->bounds.left,
         os->bounds.top,
         os->bounds.right -
         os->bounds.left + 1,
         os->bounds.bottom - os->bounds.top + 1);
   }

   delta = order_flags & RDP_ORDER_DELTA;

   switch (os->order_type)
   {
    case 140:
     process_destblt(This, s, &os->destblt, present, delta);
     break;

    case 135:
     process_patblt(This, s, &os->patblt, present, delta);
     break;

    case 130:
     process_screenblt(This, s, &os->screenblt, present, delta);
     break;

    case 137:
     process_line(This, s, &os->line, present, delta);
     break;

    case 131:
     process_rect(This, s, &os->rect, present, delta);
     break;

    case 141:
     process_desksave(This, s, &os->desksave, present, delta);
     break;

    case 136:
     process_memblt(This, s, &os->memblt, present, delta);
     break;

    case 128:
     process_triblt(This, s, &os->triblt, present, delta);
     break;

    case 134:
     process_polygon(This, s, &os->polygon, present, delta);
     break;

    case 133:
     process_polygon2(This, s, &os->polygon2, present, delta);
     break;

    case 132:
     process_polyline(This, s, &os->polyline, present, delta);
     break;

    case 139:
     process_ellipse(This, s, &os->ellipse, present, delta);
     break;

    case 138:
     process_ellipse2(This, s, &os->ellipse2, present, delta);
     break;

    case 129:
     process_text2(This, s, &os->text2, present, delta);
     break;

    default:
     unimpl("order %d\n", os->order_type);
     return;
   }

   if (order_flags & RDP_ORDER_BOUNDS)
    ui_reset_clip(This);
  }

  processed++;
 }






}
