
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double REAL ;
typedef int GpUnit ;
 double mm_per_inch ;
 int ok (int ,char*,int) ;
 double point_per_inch ;

__attribute__((used)) static REAL pixels_to_units(REAL pixels, GpUnit unit, REAL dpi)
{
    switch (unit)
    {
    case 129:
    case 133:
        return pixels;
    case 128:
        return pixels * point_per_inch / dpi;
    case 131:
        return pixels / dpi;
    case 132:
        return pixels * 300.0 / dpi;
    case 130:
        return pixels * mm_per_inch / dpi;
    default:
        ok(0, "Unsupported unit: %d\n", unit);
        return 0;
    }
}
