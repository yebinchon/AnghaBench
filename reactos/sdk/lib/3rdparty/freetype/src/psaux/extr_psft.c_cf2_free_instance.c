
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int BV; int lastNDV; } ;
struct TYPE_4__ {TYPE_1__ blend; int memory; } ;
typedef int FT_Memory ;
typedef TYPE_2__* CF2_Font ;


 int FT_FREE (int ) ;

__attribute__((used)) static void
  cf2_free_instance( void* ptr )
  {
    CF2_Font font = (CF2_Font)ptr;


    if ( font )
    {
      FT_Memory memory = font->memory;


      FT_FREE( font->blend.lastNDV );
      FT_FREE( font->blend.BV );
    }
  }
