
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ CEA708_OPACITY_TRANSLUCENT ;
 scalar_t__ CEA708_OPACITY_TRANSPARENT ;
 int STYLE_ALPHA_OPAQUE ;
 scalar_t__ STYLE_ALPHA_TRANSPARENT ;

__attribute__((used)) static uint8_t CEA708AlphaConvert( uint8_t c )
{
    if( c == CEA708_OPACITY_TRANSLUCENT )
        return STYLE_ALPHA_OPAQUE / 2;
    else if( c == CEA708_OPACITY_TRANSPARENT )
        return STYLE_ALPHA_TRANSPARENT;
    else
        return STYLE_ALPHA_OPAQUE;
}
