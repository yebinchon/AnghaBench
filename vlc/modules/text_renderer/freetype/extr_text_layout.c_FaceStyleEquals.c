
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_style_flags; char* psz_monofontname; char* psz_fontname; } ;
typedef TYPE_1__ text_style_t ;
typedef int filter_t ;


 int ConvertToLiveSize (int *,TYPE_1__ const*) ;
 int STYLE_BOLD ;
 int STYLE_DOUBLEWIDTH ;
 int STYLE_HALFWIDTH ;
 int STYLE_ITALIC ;
 int STYLE_MONOSPACED ;
 int strcasecmp (char const*,char const*) ;

__attribute__((used)) static bool FaceStyleEquals( filter_t *p_filter, const text_style_t *p_style1,
                             const text_style_t *p_style2 )
{
    if( !p_style1 || !p_style2 )
        return 0;
    if( p_style1 == p_style2 )
        return 1;

    const int i_style_mask = STYLE_BOLD | STYLE_ITALIC | STYLE_HALFWIDTH | STYLE_DOUBLEWIDTH;

    const char *psz_fontname1 = p_style1->i_style_flags & STYLE_MONOSPACED
                              ? p_style1->psz_monofontname : p_style1->psz_fontname;

    const char *psz_fontname2 = p_style2->i_style_flags & STYLE_MONOSPACED
                              ? p_style2->psz_monofontname : p_style2->psz_fontname;

    const int i_size1 = ConvertToLiveSize( p_filter, p_style1 );
    const int i_size2 = ConvertToLiveSize( p_filter, p_style2 );

    return (p_style1->i_style_flags & i_style_mask) == (p_style2->i_style_flags & i_style_mask)
         && i_size1 == i_size2
         && !strcasecmp( psz_fontname1, psz_fontname2 );
}
