
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REAL ;
typedef int GpUnit ;


 int pixels_to_units (int ,int ,int ) ;
 int units_to_pixels (double,int ,int ) ;

__attribute__((used)) static REAL units_scale(GpUnit from, GpUnit to, REAL dpi)
{
    REAL pixels = units_to_pixels(1.0, from, dpi);
    return pixels_to_units(pixels, to, dpi);
}
