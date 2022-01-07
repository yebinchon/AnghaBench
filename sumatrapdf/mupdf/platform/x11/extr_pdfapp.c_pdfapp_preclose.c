
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctx; int doc; } ;
typedef TYPE_1__ pdfapp_t ;
typedef int pdf_document ;





 scalar_t__ pdf_has_unsaved_changes (int ,int *) ;
 int * pdf_specifics (int ,int ) ;
 int pdfapp_save (TYPE_1__*) ;
 int winsavequery (TYPE_1__*) ;

int pdfapp_preclose(pdfapp_t *app)
{
 pdf_document *idoc = pdf_specifics(app->ctx, app->doc);

 if (idoc && pdf_has_unsaved_changes(app->ctx, idoc))
 {
  switch (winsavequery(app))
  {
  case 129:
   return 1;

  case 130:
   return 0;

  case 128:
   return pdfapp_save(app);
  }
 }

 return 1;
}
