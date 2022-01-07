
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_column; } ;
struct TYPE_5__ {TYPE_1__ cursor; } ;
typedef TYPE_2__ eia608_t ;


 int EIA608_SCREEN_COLUMNS ;

__attribute__((used)) static void Eia608Cursor( eia608_t *h, int dx )
{
    h->cursor.i_column += dx;
    if( h->cursor.i_column < 0 )
        h->cursor.i_column = 0;
    else if( h->cursor.i_column > EIA608_SCREEN_COLUMNS-1 )
        h->cursor.i_column = EIA608_SCREEN_COLUMNS-1;
}
