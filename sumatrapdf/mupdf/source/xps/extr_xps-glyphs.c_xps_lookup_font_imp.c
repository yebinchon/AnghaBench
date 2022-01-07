
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int font; int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ xps_font_cache ;
struct TYPE_5__ {TYPE_1__* font_table; } ;
typedef TYPE_2__ xps_document ;
typedef int fz_font ;
typedef int fz_context ;


 int * fz_keep_font (int *,int ) ;
 int xps_strcasecmp (int ,char*) ;

__attribute__((used)) static fz_font *
xps_lookup_font_imp(fz_context *ctx, xps_document *doc, char *name)
{
 xps_font_cache *cache;
 for (cache = doc->font_table; cache; cache = cache->next)
  if (!xps_strcasecmp(cache->name, name))
   return fz_keep_font(ctx, cache->font);
 return ((void*)0);
}
