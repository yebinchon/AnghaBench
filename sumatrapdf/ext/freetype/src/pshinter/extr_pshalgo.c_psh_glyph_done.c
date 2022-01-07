
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * memory; scalar_t__ num_contours; scalar_t__ num_points; int contours; int points; int * hint_tables; } ;
typedef TYPE_1__* PSH_Glyph ;
typedef int * FT_Memory ;


 int FT_FREE (int ) ;
 int psh_hint_table_done (int *,int *) ;

__attribute__((used)) static void
  psh_glyph_done( PSH_Glyph glyph )
  {
    FT_Memory memory = glyph->memory;


    psh_hint_table_done( &glyph->hint_tables[1], memory );
    psh_hint_table_done( &glyph->hint_tables[0], memory );

    FT_FREE( glyph->points );
    FT_FREE( glyph->contours );

    glyph->num_points = 0;
    glyph->num_contours = 0;

    glyph->memory = ((void*)0);
  }
