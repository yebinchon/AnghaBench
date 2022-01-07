
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int font; int color; } ;
typedef TYPE_1__ eia608_t ;
typedef int eia608_status_t ;
struct TYPE_6__ {int i_font; int i_color; } ;


 int Debug (int ) ;
 int EIA608_STATUS_DEFAULT ;
 int Eia608Cursor (TYPE_1__*,int) ;
 int assert (int) ;
 TYPE_2__* pac2_attribs ;
 int printf (char*,int const) ;

__attribute__((used)) static eia608_status_t Eia608ParseTextAttribute( eia608_t *h, uint8_t d2 )
{
    const int i_index = d2 - 0x20;
    assert( d2 >= 0x20 && d2 <= 0x2f );

    Debug(printf("[TA %d]", i_index));
    h->color = pac2_attribs[i_index].i_color;
    h->font = pac2_attribs[i_index].i_font;
    Eia608Cursor( h, 1 );

    return EIA608_STATUS_DEFAULT;
}
