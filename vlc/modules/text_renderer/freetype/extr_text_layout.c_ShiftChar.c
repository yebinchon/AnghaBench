
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int yMin; int yMax; int xMin; int xMax; } ;
struct TYPE_5__ {TYPE_1__ bbox; int p_outline; int p_shadow; int p_glyph; } ;
typedef TYPE_2__ line_character_t ;


 int ShiftGlyph (int ,int,int) ;

__attribute__((used)) static void ShiftChar( line_character_t *c, int x, int y )
{
    ShiftGlyph( c->p_glyph, x, y );
    ShiftGlyph( c->p_shadow, x, y );
    ShiftGlyph( c->p_outline, x, y );
    c->bbox.yMin += y;
    c->bbox.yMax += y;
    c->bbox.xMin += x;
    c->bbox.xMax += x;
}
