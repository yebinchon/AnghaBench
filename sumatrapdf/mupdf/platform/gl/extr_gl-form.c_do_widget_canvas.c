
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {int is_hot; int is_active; int obj; } ;
typedef TYPE_1__ pdf_widget ;
typedef int fz_rect ;
struct TYPE_25__ {scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; } ;
typedef TYPE_2__ fz_irect ;
struct TYPE_26__ {int dialog; scalar_t__ down; TYPE_1__* active; TYPE_1__* hot; } ;


 int GL_BLEND ;
 int GL_LINE_LOOP ;
 int GL_LINE_STIPPLE ;
 int GL_ONE ;
 int GL_ONE_MINUS_DST_COLOR ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_ZERO ;
 scalar_t__ PDF_ANNOT_WIDGET ;
 int PDF_FIELD_IS_READ_ONLY ;




 int PDF_WIDGET_TYPE_SIGNATURE ;

 int ch_dialog ;
 TYPE_1__* ch_widget ;
 int ctx ;
 TYPE_2__ fz_irect_from_rect (int ) ;
 int fz_transform_rect (int ,int ) ;
 int glBegin (int ) ;
 int glBlendFunc (int ,int ) ;
 int glColor4f (int,int,int,int) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glEnd () ;
 int glLineStipple (int,int) ;
 int glRectf (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int glVertex2f (scalar_t__,scalar_t__) ;
 int page ;
 int pdf ;
 int pdf_annot_event_blur (int ,TYPE_1__*) ;
 int pdf_annot_event_down (int ,TYPE_1__*) ;
 int pdf_annot_event_enter (int ,TYPE_1__*) ;
 int pdf_annot_event_exit (int ,TYPE_1__*) ;
 int pdf_annot_event_focus (int ,TYPE_1__*) ;
 int pdf_annot_event_up (int ,TYPE_1__*) ;
 scalar_t__ pdf_annot_type (int ,TYPE_1__*) ;
 int pdf_bound_widget (int ,TYPE_1__*) ;
 int pdf_field_flags (int ,int ) ;
 TYPE_1__* pdf_first_widget (int ,int ) ;
 TYPE_1__* pdf_next_widget (int ,TYPE_1__*) ;
 int pdf_toggle_widget (int ,TYPE_1__*) ;
 scalar_t__ pdf_update_page (int ,int ) ;
 int pdf_widget_type (int ,TYPE_1__*) ;
 int render_page () ;
 TYPE_1__* selected_annot ;
 int show_sig_dialog (TYPE_1__*) ;
 int show_tx_dialog (TYPE_1__*) ;
 scalar_t__ showform ;
 TYPE_4__ ui ;
 scalar_t__ ui_mouse_inside (TYPE_2__) ;
 int view_page_ctm ;

void do_widget_canvas(fz_irect canvas_area)
{
 pdf_widget *widget;
 fz_rect bounds;
 fz_irect area;

 if (!pdf)
  return;

 for (widget = pdf_first_widget(ctx, page); widget; widget = pdf_next_widget(ctx, widget))
 {
  bounds = pdf_bound_widget(ctx, widget);
  bounds = fz_transform_rect(bounds, view_page_ctm);
  area = fz_irect_from_rect(bounds);

  if (ui_mouse_inside(canvas_area) && ui_mouse_inside(area))
  {
   if (!widget->is_hot)
    pdf_annot_event_enter(ctx, widget);
   widget->is_hot = 1;

   ui.hot = widget;
   if (!ui.active && ui.down)
   {
    ui.active = widget;
    pdf_annot_event_down(ctx, widget);
    if (selected_annot != widget)
    {
     if (selected_annot && pdf_annot_type(ctx, selected_annot) == PDF_ANNOT_WIDGET)
      pdf_annot_event_blur(ctx, selected_annot);
     selected_annot = widget;
     pdf_annot_event_focus(ctx, widget);
    }
   }
  }
  else
  {
   if (widget->is_hot)
    pdf_annot_event_exit(ctx, widget);
   widget->is_hot = 0;
  }


  widget->is_active = (ui.active == widget && ui.down);

  if (showform)
  {
   glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
   glEnable(GL_BLEND);
   glColor4f(0, 0, 1, 0.1f);
   glRectf(area.x0, area.y0, area.x1, area.y1);
   glDisable(GL_BLEND);
  }

  if (ui.active == widget || (!ui.active && ui.hot == widget))
  {
   glLineStipple(1, 0xAAAA);
   glEnable(GL_LINE_STIPPLE);
   glBlendFunc(GL_ONE_MINUS_DST_COLOR, GL_ZERO);
   glEnable(GL_BLEND);
   glColor4f(1, 1, 1, 1);
   glBegin(GL_LINE_LOOP);
   glVertex2f(area.x0-0.5f, area.y0-0.5f);
   glVertex2f(area.x1+0.5f, area.y0-0.5f);
   glVertex2f(area.x1+0.5f, area.y1+0.5f);
   glVertex2f(area.x0-0.5f, area.y1+0.5f);
   glEnd();
   glDisable(GL_BLEND);
   glDisable(GL_LINE_STIPPLE);
  }

  if (ui.hot == widget && ui.active == widget && !ui.down)
  {
   pdf_annot_event_up(ctx, widget);

   if (pdf_widget_type(ctx, widget) == PDF_WIDGET_TYPE_SIGNATURE)
   {
    show_sig_dialog(widget);
   }
   else
   {
    if (pdf_field_flags(ctx, widget->obj) & PDF_FIELD_IS_READ_ONLY)
     continue;

    switch (pdf_widget_type(ctx, widget))
    {
    default:
     break;
    case 132:
    case 129:
     pdf_toggle_widget(ctx, widget);
     break;
    case 128:
     show_tx_dialog(widget);
     break;
    case 131:
    case 130:
     ui.dialog = ch_dialog;
     ch_widget = widget;
     break;
    }
   }

  }
 }

 if (pdf_update_page(ctx, page))
  render_page();
}
