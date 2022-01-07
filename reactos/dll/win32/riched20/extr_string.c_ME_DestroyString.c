
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ME_String ;


 int heap_free (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void ME_DestroyString(ME_String *s)
{
  if (!s) return;
  if (s->free) s->free( s );
  heap_free( s );
}
