
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int script_cache; int * font_cache; int entry; } ;
typedef TYPE_1__ ME_Style ;


 int ScriptFreeCache (int *) ;
 int heap_free (TYPE_1__*) ;
 int list_remove (int *) ;
 int release_font_cache (int *) ;

void ME_DestroyStyle(ME_Style *s)
{
  list_remove( &s->entry );
  if (s->font_cache)
  {
    release_font_cache( s->font_cache );
    s->font_cache = ((void*)0);
  }
  ScriptFreeCache( &s->script_cache );
  heap_free(s);
}
