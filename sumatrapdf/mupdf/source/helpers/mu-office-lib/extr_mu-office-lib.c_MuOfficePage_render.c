
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_11__ {int * ctx; } ;
struct TYPE_10__ {TYPE_3__* doc; } ;
struct TYPE_9__ {float zoom; int area_valid; int thread; void* cookie; int * progress; int area; int const* bitmap; TYPE_2__* page; } ;
typedef int MuOfficeRenderProgressFn ;
typedef int MuOfficeRenderArea ;
typedef TYPE_1__ MuOfficeRender ;
typedef TYPE_2__ MuOfficePage ;
typedef TYPE_3__ MuOfficeDoc ;
typedef int MuOfficeBitmap ;
typedef int MuError ;


 int MuError_BadNull ;
 int MuError_OK ;
 int MuError_OOM ;
 TYPE_1__* Pal_Mem_calloc (int,int) ;
 int Pal_Mem_free (TYPE_1__*) ;
 scalar_t__ mu_create_thread (int *,int ,TYPE_1__*) ;
 int render_worker ;

MuError MuOfficePage_render( MuOfficePage *page,
    float zoom,
   const MuOfficeBitmap *bitmap,
   const MuOfficeRenderArea *area,
    MuOfficeRenderProgressFn *progressFn,
    void *cookie,
    MuOfficeRender **pRender)
{
 MuOfficeRender *render;
 MuOfficeDoc *doc;
 fz_context *ctx;

 if (!pRender)
  return MuError_BadNull;
 *pRender = ((void*)0);
 if (!page)
  return MuError_BadNull;
 doc = page->doc;
 ctx = doc->ctx;

 render = Pal_Mem_calloc(1, sizeof(*render));
 if (render == ((void*)0))
  return MuError_OOM;

 render->page = page;
 render->zoom = zoom;
 render->bitmap = bitmap;
 if (area)
 {
  render->area = *area;
  render->area_valid = 1;
 }
 else
 {
  render->area_valid = 0;
 }
 render->progress = progressFn;
 render->cookie = cookie;

 if (mu_create_thread(&render->thread, render_worker, render))
 {
  Pal_Mem_free(render);
  return MuError_OOM;
 }

 *pRender = render;

 return MuError_OK;
}
