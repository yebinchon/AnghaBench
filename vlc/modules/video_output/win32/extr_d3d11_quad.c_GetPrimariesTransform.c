
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t video_color_primaries_t ;
struct cie1931_primaries {int white; } ;
typedef double FLOAT ;


 int ChromaticAdaptation (int *,int *,double*) ;
 int Float3x3Multiply (double*,double*) ;
 int GetRGB2XYZMatrix (struct cie1931_primaries const*,double*) ;
 int GetXYZ2RGBMatrix (struct cie1931_primaries const*,double*) ;
 struct cie1931_primaries* STANDARD_PRIMARIES ;

__attribute__((used)) static void GetPrimariesTransform(FLOAT Primaries[4*4], video_color_primaries_t src,
                                  video_color_primaries_t dst)
{
    const struct cie1931_primaries *p_src = &STANDARD_PRIMARIES[src];
    const struct cie1931_primaries *p_dst = &STANDARD_PRIMARIES[dst];
    double rgb2xyz[3 * 3], xyz2rgb[3 * 3];


    GetRGB2XYZMatrix(p_src, rgb2xyz);


    ChromaticAdaptation(&p_src->white, &p_dst->white, rgb2xyz);


    GetXYZ2RGBMatrix(p_dst, xyz2rgb);


    Float3x3Multiply(xyz2rgb, rgb2xyz);

    for (size_t i=0;i<3; ++i)
    {
        for (size_t j=0;j<3; ++j)
            Primaries[j + i*4] = xyz2rgb[j + i*3];
        Primaries[3 + i*4] = 0;
    }
    for (size_t j=0;j<4; ++j)
        Primaries[j + 3*4] = j == 3;
}
