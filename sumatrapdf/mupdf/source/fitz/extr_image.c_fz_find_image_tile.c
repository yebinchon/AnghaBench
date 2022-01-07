
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int fz_pixmap ;
typedef int fz_matrix ;
struct TYPE_6__ {scalar_t__ l2factor; int rect; } ;
typedef TYPE_1__ fz_image_key ;
struct TYPE_7__ {int h; int w; } ;
typedef TYPE_2__ fz_image ;
typedef int fz_context ;


 int fz_drop_pixmap_imp ;
 int * fz_find_item (int *,int ,TYPE_1__*,int *) ;
 int fz_image_store_type ;
 int update_ctm_for_subarea (int *,int *,int ,int ) ;

__attribute__((used)) static fz_pixmap *
fz_find_image_tile(fz_context *ctx, fz_image *image, fz_image_key *key, fz_matrix *ctm)
{
 fz_pixmap *tile;
 do
 {
  tile = fz_find_item(ctx, fz_drop_pixmap_imp, key, &fz_image_store_type);
  if (tile)
  {
   update_ctm_for_subarea(ctm, &key->rect, image->w, image->h);
   return tile;
  }
  key->l2factor--;
 }
 while (key->l2factor >= 0);
 return ((void*)0);
}
