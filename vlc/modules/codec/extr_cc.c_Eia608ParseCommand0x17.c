
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int eia608_t ;


 int Debug (int ) ;
 int Eia608Cursor (int *,int) ;
 int printf (char*,int) ;

__attribute__((used)) static bool Eia608ParseCommand0x17( eia608_t *h, uint8_t d2 )
{
    switch( d2 )
    {
    case 0x21:
    case 0x22:
    case 0x23:
        Debug(printf("[TO%d]", d2 - 0x20));
        Eia608Cursor( h, d2 - 0x20 );
        break;
    }
    return 0;
}
