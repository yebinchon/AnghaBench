
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int i_row; int i_column; } ;
struct TYPE_6__ {scalar_t__ mode; int i_row_rollup; int font; int color; TYPE_1__ cursor; } ;
typedef TYPE_2__ eia608_t ;
struct TYPE_7__ {int i_font; int i_color; int i_column; } ;


 int Debug (int ) ;
 scalar_t__ EIA608_MODE_TEXT ;
 int assert (int) ;
 TYPE_3__* pac2_attribs ;
 int printf (char*,int const) ;

__attribute__((used)) static bool Eia608ParsePac( eia608_t *h, uint8_t d1, uint8_t d2 )
{
    static const int pi_row[] = {
        11, -1, 1, 2, 3, 4, 12, 13, 14, 15, 5, 6, 7, 8, 9, 10
    };
    const int i_row_index = ( (d1<<1) & 0x0e) | ( (d2>>5) & 0x01 );

    Debug(printf("[PAC,%d]", i_row_index));
    assert( d2 >= 0x40 && d2 <= 0x7f );

    if( pi_row[i_row_index] <= 0 )
        return 0;


    if( h->mode != EIA608_MODE_TEXT )
        h->cursor.i_row = pi_row[i_row_index] - 1;
    h->i_row_rollup = pi_row[i_row_index] - 1;

    if( d2 >= 0x60 )
        d2 -= 0x60;
    else if( d2 >= 0x40 )
        d2 -= 0x40;
    h->cursor.i_column = pac2_attribs[d2].i_column;
    h->color = pac2_attribs[d2].i_color;
    h->font = pac2_attribs[d2].i_font;

    return 0;
}
