
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_document ;


 int ctx ;
 int fz_drop_page (int ,scalar_t__) ;
 scalar_t__ fz_load_page (int ,int *,int) ;
 scalar_t__ lastPage ;

__attribute__((used)) static void loadPage(fz_document *doc, int number)
{
 static fz_document *lastPageDoc = ((void*)0);
 static int lastPageNumber = -1;
 if (lastPageNumber != number || lastPageDoc != doc)
 {
  if (lastPage)
   fz_drop_page(ctx, lastPage);
  lastPage = fz_load_page(ctx, doc, number-1);
  lastPageDoc = doc;
  lastPageNumber = number;
 }
}
