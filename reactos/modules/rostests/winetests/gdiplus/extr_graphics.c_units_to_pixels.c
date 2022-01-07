
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double REAL ;
typedef int GpUnit ;
 double mm_per_inch ;
 int ok (int ,char*,int) ;
 double point_per_inch ;

__attribute__((used)) static REAL units_to_pixels(REAL units, GpUnit unit, REAL dpi)
{
    switch (unit)
    {
    case 129:
    case 133:
        return units;
    case 128:
        return units * dpi / point_per_inch;
    case 131:
        return units * dpi;
    case 132:
        return units * dpi / 300.0;
    case 130:
        return units * dpi / mm_per_inch;
    default:
        ok(0, "Unsupported unit: %d\n", unit);
        return 0;
    }
}
