
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uni_char_t ;
typedef int text_style_t ;
typedef int ruby_block_t ;
typedef int paragraph_t ;
typedef int filter_t ;


 scalar_t__ AnalyzeParagraph (int *) ;
 int FreeParagraph (int *) ;
 scalar_t__ ItemizeParagraph (int *,int *) ;
 scalar_t__ LoadGlyphs (int *,int *,int,int,unsigned int*) ;
 int * NewParagraph (int *,int,int const*,int **,int **,int) ;
 scalar_t__ RemoveZeroWidthCharacters (int *) ;
 scalar_t__ ShapeParagraphFriBidi (int *,int *) ;
 scalar_t__ ShapeParagraphHarfBuzz (int *,int **) ;
 scalar_t__ ZeroNsmAdvance (int *) ;

__attribute__((used)) static paragraph_t * BuildParagraph( filter_t *p_filter,
                                     int i_size,
                                     const uni_char_t *p_uchars,
                                     text_style_t **pp_styles,
                                     ruby_block_t **pp_ruby,
                                     int i_runs_size,
                                     unsigned *pi_max_advance_x )
{
    paragraph_t *p_paragraph = NewParagraph( p_filter, i_size,
                                p_uchars,
                                pp_styles,
                                pp_ruby,
                                i_runs_size );
    if( !p_paragraph )
        return ((void*)0);






    if( ItemizeParagraph( p_filter, p_paragraph ) )
        goto error;
    if( LoadGlyphs( p_filter, p_paragraph, 0, 1, pi_max_advance_x ) )
        goto error;


    return p_paragraph;

error:
    if( p_paragraph )
        FreeParagraph( p_paragraph );

    return ((void*)0);
}
