
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uni_char_t ;
typedef int text_style_t ;
typedef int paragraph_t ;
typedef int line_desc_t ;
typedef int filter_t ;


 int * BuildParagraph (int *,int,int const*,int **,int *,int,unsigned int*) ;
 int FreeParagraph (int *) ;
 scalar_t__ LayoutLine (int *,int *,int ,int,int,int **) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (int **) ;
 int ** malloc (int) ;

__attribute__((used)) static int LayoutRubyText( filter_t *p_filter,
                           const uni_char_t *p_uchars,
                           int i_uchars,
                           text_style_t *p_style,
                           line_desc_t **pp_line )
{
    unsigned int i_max_advance_x;

    text_style_t **pp_styles = malloc(sizeof(*pp_styles) * i_uchars);
    for(int i=0;i<i_uchars;i++)
        pp_styles[i] = p_style;

    paragraph_t *p_paragraph = BuildParagraph( p_filter, i_uchars,
                                               p_uchars, pp_styles,
                                               ((void*)0), 1,
                                               &i_max_advance_x );
    if( !p_paragraph )
    {
        free( pp_styles );
        return VLC_EGENERIC;
    }

    if( LayoutLine( p_filter, p_paragraph,
                    0, i_uchars - 1,
                    0, pp_line ) )
    {
        free( pp_styles );
        FreeParagraph( p_paragraph );
        return VLC_EGENERIC;
    }

    FreeParagraph( p_paragraph );
    free( pp_styles );

    return VLC_SUCCESS;
}
