
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int width; int height; int lineSkip; int memptr; } ;
struct TYPE_9__ {int width; int height; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_10__ {TYPE_2__ renderArea; TYPE_1__ origin; } ;
typedef TYPE_3__ MuOfficeRenderArea ;
typedef int MuOfficeRender ;
typedef int MuOfficePage ;
typedef int MuOfficeLib ;
typedef int MuOfficeDoc ;
typedef TYPE_4__ MuOfficeBitmap ;
typedef int MuError ;


 int CreateSemaphore (int *,int ,int,int *) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MuOfficeDoc_destroy (int *) ;
 int MuOfficeDoc_getNumPages (int *,int*) ;
 int MuOfficeDoc_getPage (int *,int,int *,void*,int **) ;
 int MuOfficeLib_loadDocument (int *,char*,int *,int *,int *,int **) ;
 int MuOfficePage_destroy (int *) ;
 int MuOfficePage_getSize (int *,float*,float*) ;
 int MuOfficePage_render (int *,float,TYPE_4__*,TYPE_3__*,int *,int *,int **) ;
 int MuOfficeRender_destroy (int *) ;
 int MuOfficeRender_waitUntilComplete (int *) ;
 int fprintf (int ,char*,int,...) ;
 int free (int ) ;
 int loaded ;
 int malloc (int) ;
 int save_png (TYPE_4__*,char*) ;
 int stderr ;

__attribute__((used)) static int
test_sync(MuOfficeLib *mu)
{
 MuOfficeDoc *doc;
 MuError err;
 int count;
 MuOfficePage *page;
 float w, h;
 MuOfficeBitmap bitmap;
 MuOfficeRenderArea area;
 MuOfficeRender *render;

 loaded = CreateSemaphore(((void*)0), 0, 1, ((void*)0));

 err = MuOfficeLib_loadDocument(mu,
     "../MyTests/pdf_reference17.pdf",
     ((void*)0),
     ((void*)0),
     ((void*)0),
     &doc);


 err = MuOfficeDoc_getNumPages(doc, &count);
 if (err)
 {
  fprintf(stderr, "Failed to count pages: error=%d\n", err);
  return EXIT_FAILURE;
 }
 fprintf(stderr, "%d Pages in document\n", count);


 err = MuOfficeDoc_getPage(doc, 1, ((void*)0), (void *)4321, &page);
 if (err)
 {
  fprintf(stderr, "Failed to get page: error=%d\n", err);
  return EXIT_FAILURE;
 }


 err = MuOfficePage_getSize(page, &w, &h);
 if (err)
 {
  fprintf(stderr, "Failed to get page size: error=%d\n", err);
  return EXIT_FAILURE;
 }
 fprintf(stderr, "Page size = %g x %g\n", w, h);


 bitmap.width = (int)(w * 1.5f + 0.5f);
 bitmap.height = (int)(h * 1.5f + 0.5f);
 bitmap.lineSkip = bitmap.width * 4;
 bitmap.memptr = malloc(bitmap.lineSkip * bitmap.height);


 area.origin.x = 0;
 area.origin.y = 0;
 area.renderArea.x = 0;
 area.renderArea.y = 0;
 area.renderArea.width = bitmap.width;
 area.renderArea.height = bitmap.height;


 err = MuOfficePage_render(page, 1.5f, &bitmap, &area, ((void*)0), ((void*)0), &render);
 if (err)
 {
  fprintf(stderr, "Page render failed: error=%d\n", err);
  return EXIT_FAILURE;
 }

 err = MuOfficeRender_waitUntilComplete(render);
 if (err)
 {
  fprintf(stderr, "Page render failed to complete: error=%d\n", err);
  return EXIT_FAILURE;
 }


 MuOfficeRender_destroy(render);


 save_png(&bitmap, "out1.png");
 free(bitmap.memptr);

 MuOfficePage_destroy(page);

 MuOfficeDoc_destroy(doc);

 return EXIT_SUCCESS;
}
