
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szData; } ;
typedef TYPE_1__ ME_String ;


 int heap_free (int ) ;

__attribute__((used)) static void heap_string_free(ME_String *s)
{
  heap_free( s->szData );
}
