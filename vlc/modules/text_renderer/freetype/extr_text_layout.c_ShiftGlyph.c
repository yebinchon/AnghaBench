
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left; int top; } ;
typedef TYPE_1__* FT_BitmapGlyph ;



__attribute__((used)) static void ShiftGlyph( FT_BitmapGlyph g, int x, int y )
{
    if( g )
    {
        g->left += x;
        g->top += y;
    }
}
