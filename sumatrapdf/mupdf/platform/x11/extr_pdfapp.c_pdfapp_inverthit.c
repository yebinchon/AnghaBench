
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hit_count; int * hit_bbox; } ;
typedef TYPE_1__ pdfapp_t ;
typedef int fz_rect ;
typedef int fz_matrix ;


 int fz_rect_from_quad (int ) ;
 int fz_transform_rect (int ,int ) ;
 int pdfapp_invert (TYPE_1__*,int ) ;
 int pdfapp_viewctm (int *,TYPE_1__*) ;

void pdfapp_inverthit(pdfapp_t *app)
{
 fz_rect bbox;
 fz_matrix ctm;
 int i;

 pdfapp_viewctm(&ctm, app);

 for (i = 0; i < app->hit_count; i++)
 {
  bbox = fz_rect_from_quad(app->hit_bbox[i]);
  bbox = fz_transform_rect(bbox, ctm);
  pdfapp_invert(app, bbox);
 }
}
