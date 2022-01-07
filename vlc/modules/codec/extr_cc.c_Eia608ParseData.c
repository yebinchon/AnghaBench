
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ mode; } ;
typedef TYPE_1__ eia608_t ;
typedef int eia608_status_t ;


 int Debug (int ) ;
 scalar_t__ EIA608_MODE_POPUP ;
 int EIA608_STATUS_CHANGED ;
 int EIA608_STATUS_DEFAULT ;
 int Eia608ParseCommand0x14 (TYPE_1__*,int) ;
 int Eia608ParseCommand0x17 (TYPE_1__*,int) ;
 int Eia608ParseDouble (TYPE_1__*,int) ;
 int Eia608ParseExtended (TYPE_1__*,int,int) ;
 int Eia608ParsePac (TYPE_1__*,int,int) ;
 int Eia608ParseSingle (TYPE_1__*,int) ;
 int Eia608ParseTextAttribute (TYPE_1__*,int) ;
 int ON (int,int,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static eia608_status_t Eia608ParseData( eia608_t *h, uint8_t d1, uint8_t d2 )
{
    eia608_status_t i_status = EIA608_STATUS_DEFAULT;

    if( d1 >= 0x18 && d1 <= 0x1f )
        d1 -= 8;


    switch( d1 )
    {
    case 0x11:
        do { if( d2 >= 0x20 && d2 <= 0x2f ) i_status = Eia608ParseTextAttribute( h, d2 ); } while(0);
        do { if( d2 >= 0x30 && d2 <= 0x3f ) i_status = Eia608ParseDouble( h, d2 ); } while(0);
        break;
    case 0x12: case 0x13:
        do { if( d2 >= 0x20 && d2 <= 0x3f ) i_status = Eia608ParseExtended( h, d1, d2 ); } while(0);
        break;
    case 0x14: case 0x15:
        do { if( d2 >= 0x20 && d2 <= 0x2f ) i_status = Eia608ParseCommand0x14( h, d2 ); } while(0);
        break;
    case 0x17:
        do { if( d2 >= 0x21 && d2 <= 0x23 ) i_status = Eia608ParseCommand0x17( h, d2 ); } while(0);
        do { if( d2 >= 0x2e && d2 <= 0x2f ) i_status = Eia608ParseTextAttribute( h, d2 ); } while(0);
        break;
    }
    if( d1 == 0x10 )
        do { if( d2 >= 0x40 && d2 <= 0x5f ) i_status = Eia608ParsePac( h, d1, d2 ); } while(0);
    else if( d1 >= 0x11 && d1 <= 0x17 )
        do { if( d2 >= 0x40 && d2 <= 0x7f ) i_status = Eia608ParsePac( h, d1, d2 ); } while(0);

    if( d1 >= 0x20 )
    {
        Debug(printf("\033[0;33m%c", d1));
        i_status = Eia608ParseSingle( h, d1 );
        if( d2 >= 0x20 )
        {
            Debug(printf("%c", d2));
            i_status |= Eia608ParseSingle( h, d2 );
        }
        Debug(printf("\033[0m"));
    }


    if( h->mode == EIA608_MODE_POPUP && i_status == EIA608_STATUS_CHANGED )
        i_status = EIA608_STATUS_DEFAULT;

    return i_status;
}
