
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ yMax; scalar_t__ xMin; } ;
struct TYPE_6__ {TYPE_1__ bbox; } ;
typedef TYPE_2__ line_desc_t ;


 int ShiftLine (TYPE_2__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void MoveLineTo( line_desc_t *p_line, int x, int y )
{
    ShiftLine( p_line, x - p_line->bbox.xMin,
                       y - p_line->bbox.yMax );
}
