
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text_style_t ;


 int * calloc (int,int) ;
 int text_style_Copy (int *,int const*) ;

text_style_t *text_style_Duplicate( const text_style_t *p_src )
{
    if( !p_src )
        return ((void*)0);

    text_style_t *p_dst = calloc( 1, sizeof(*p_dst) );
    if( p_dst )
        text_style_Copy( p_dst, p_src );
    return p_dst;
}
