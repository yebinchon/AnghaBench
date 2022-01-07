
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwEffects; int bUnderlineType; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
typedef TYPE_2__ ME_Style ;
typedef int * HPEN ;
typedef int COLORREF ;


 int CFE_LINK ;
 int CFE_UNDERLINE ;






 int * CreatePen (int ,int,int ) ;
 int FIXME (char*,int) ;
 int PS_DOT ;
 int PS_SOLID ;

__attribute__((used)) static HPEN get_underline_pen( ME_Style *style, COLORREF color )
{
    if (style->fmt.dwEffects & CFE_LINK)
        return CreatePen( PS_SOLID, 1, color );


    if (style->fmt.dwEffects & CFE_UNDERLINE)
    {
        switch (style->fmt.bUnderlineType)
        {
        case 132:
        case 128:
        case 130:
            return CreatePen( PS_SOLID, 1, color );
        case 131:
            return CreatePen( PS_DOT, 1, color );
        default:
            FIXME( "Unknown underline type (%u)\n", style->fmt.bUnderlineType );

        case 133:
        case 129:
            break;
        }
    }
    return ((void*)0);
}
