
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cie1931_primaries {int dummy; } ;


 int Float3x3Inverse (double*) ;
 int GetRGB2XYZMatrix (struct cie1931_primaries const*,double*) ;

__attribute__((used)) static void GetXYZ2RGBMatrix(const struct cie1931_primaries *primaries,
                             double out[3 * 3])
{
    GetRGB2XYZMatrix(primaries, out);
    Float3x3Inverse(out);
}
