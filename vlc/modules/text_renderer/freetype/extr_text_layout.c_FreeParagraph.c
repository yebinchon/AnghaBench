
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_levels; struct TYPE_4__* p_btypes; struct TYPE_4__* p_types; struct TYPE_4__* pi_reordered_indices; struct TYPE_4__* p_scripts; struct TYPE_4__* p_code_points; struct TYPE_4__* pp_styles; struct TYPE_4__* pp_ruby; struct TYPE_4__* pp_faces; struct TYPE_4__* pi_run_ids; struct TYPE_4__* p_glyph_bitmaps; struct TYPE_4__* pi_glyph_indices; struct TYPE_4__* p_runs; } ;
typedef TYPE_1__ paragraph_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void FreeParagraph( paragraph_t *p_paragraph )
{
    free( p_paragraph->p_runs );
    free( p_paragraph->pi_glyph_indices );
    free( p_paragraph->p_glyph_bitmaps );
    free( p_paragraph->pi_run_ids );
    free( p_paragraph->pp_faces );
    free( p_paragraph->pp_ruby );
    free( p_paragraph->pp_styles );
    free( p_paragraph->p_code_points );
    free( p_paragraph );
}
