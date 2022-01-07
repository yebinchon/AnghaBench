
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_6__ {scalar_t__ x; scalar_t__ y; } ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__* LPRECT ;



__attribute__((used)) static POINT SCROLL_ClipPos( LPRECT lpRect, POINT pt )
{
    if( pt.x < lpRect->left )
     pt.x = lpRect->left;
    else
        if( pt.x > lpRect->right )
 pt.x = lpRect->right;

    if( pt.y < lpRect->top )
     pt.y = lpRect->top;
    else
    if( pt.y > lpRect->bottom )
     pt.y = lpRect->bottom;

    return pt;
}
