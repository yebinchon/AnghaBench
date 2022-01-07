
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rotate; int resolution; int page_bbox; } ;
typedef TYPE_1__ pdfapp_t ;
typedef int fz_matrix ;


 int fz_transform_page (int ,int ,int ) ;

__attribute__((used)) static void pdfapp_viewctm(fz_matrix *mat, pdfapp_t *app)
{
 *mat = fz_transform_page(app->page_bbox, app->resolution, app->rotate);
}
