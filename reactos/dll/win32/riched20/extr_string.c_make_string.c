
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ME_String ;


 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static ME_String *make_string( void (*free)(ME_String *) )
{
  ME_String *s = heap_alloc( sizeof(*s) );

  if (s) s->free = free;
  return s;
}
