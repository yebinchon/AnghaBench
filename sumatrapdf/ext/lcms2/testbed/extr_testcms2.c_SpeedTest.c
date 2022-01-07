
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateCurves () ;
 int DbgThread () ;
 int INTENT_ABSOLUTE_COLORIMETRIC ;
 int INTENT_PERCEPTUAL ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int SpeedTest16bits (char*,int ,int ,int ) ;
 int SpeedTest16bitsCMYK (char*,int ,int ) ;
 int SpeedTest16bitsGray (char*,int ,int ,int ) ;
 int SpeedTest32bits (char*,int ,int ,int ) ;
 int SpeedTest32bitsCMYK (char*,int ,int ) ;
 int SpeedTest32bitsGray (char*,int ,int ,int ) ;
 int SpeedTest8bits (char*,int ,int ,int ) ;
 int SpeedTest8bitsCMYK (char*,int ,int ) ;
 int SpeedTest8bitsGray (char*,int ,int ,int ) ;
 int cmsOpenProfileFromFile (int ,char*,char*) ;
 int fflush (int ) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static
void SpeedTest(void)
{
    printf("\n\nP E R F O R M A N C E   T E S T S\n");
    printf( "=================================\n\n");
    fflush(stdout);

    SpeedTest8bits("8 bits on CLUT profiles",
        cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "test3.icc", "r"),
        INTENT_PERCEPTUAL);

    SpeedTest16bits("16 bits on CLUT profiles",
        cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "test3.icc", "r"), INTENT_PERCEPTUAL);

    SpeedTest32bits("32 bits on CLUT profiles",
        cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "test3.icc", "r"), INTENT_PERCEPTUAL);

    printf("\n");



    SpeedTest8bits("8 bits on Matrix-Shaper profiles",
        cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    SpeedTest16bits("16 bits on Matrix-Shaper profiles",
       cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    SpeedTest32bits("32 bits on Matrix-Shaper profiles",
       cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    printf("\n");



    SpeedTest8bits("8 bits on SAME Matrix-Shaper profiles",
        cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
        INTENT_PERCEPTUAL);

    SpeedTest16bits("16 bits on SAME Matrix-Shaper profiles",
        cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    SpeedTest32bits("32 bits on SAME Matrix-Shaper profiles",
        cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        INTENT_PERCEPTUAL);

    printf("\n");



    SpeedTest8bits("8 bits on Matrix-Shaper profiles (AbsCol)",
       cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
       cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        INTENT_ABSOLUTE_COLORIMETRIC);

    SpeedTest16bits("16 bits on Matrix-Shaper profiles (AbsCol)",
       cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
       cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        INTENT_ABSOLUTE_COLORIMETRIC);

    SpeedTest32bits("32 bits on Matrix-Shaper profiles (AbsCol)",
       cmsOpenProfileFromFile(DbgThread(), "test5.icc", "r"),
       cmsOpenProfileFromFile(DbgThread(), "aRGBlcms2.icc", "r"),
        INTENT_ABSOLUTE_COLORIMETRIC);

    printf("\n");



    SpeedTest8bits("8 bits on curves",
        CreateCurves(),
        CreateCurves(),
        INTENT_PERCEPTUAL);

    SpeedTest16bits("16 bits on curves",
        CreateCurves(),
        CreateCurves(),
        INTENT_PERCEPTUAL);

    SpeedTest32bits("32 bits on curves",
        CreateCurves(),
        CreateCurves(),
        INTENT_PERCEPTUAL);

    printf("\n");



    SpeedTest8bitsCMYK("8 bits on CMYK profiles",
        cmsOpenProfileFromFile(DbgThread(), "test1.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "test2.icc", "r"));

    SpeedTest16bitsCMYK("16 bits on CMYK profiles",
        cmsOpenProfileFromFile(DbgThread(), "test1.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "test2.icc", "r"));

    SpeedTest32bitsCMYK("32 bits on CMYK profiles",
        cmsOpenProfileFromFile(DbgThread(), "test1.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "test2.icc", "r"));

    printf("\n");



    SpeedTest8bitsGray("8 bits on gray-to gray",
        cmsOpenProfileFromFile(DbgThread(), "gray3lcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    SpeedTest16bitsGray("16 bits on gray-to gray",
        cmsOpenProfileFromFile(DbgThread(), "gray3lcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    SpeedTest32bitsGray("32 bits on gray-to gray",
        cmsOpenProfileFromFile(DbgThread(), "gray3lcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    printf("\n");



    SpeedTest8bitsGray("8 bits on gray-to-lab gray",
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "glablcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    SpeedTest16bitsGray("16 bits on gray-to-lab gray",
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "glablcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    SpeedTest32bitsGray("32 bits on gray-to-lab gray",
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "glablcms2.icc", "r"), INTENT_RELATIVE_COLORIMETRIC);

    printf("\n");



    SpeedTest8bitsGray("8 bits on SAME gray-to-gray",
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"), INTENT_PERCEPTUAL);

    SpeedTest16bitsGray("16 bits on SAME gray-to-gray",
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"), INTENT_PERCEPTUAL);

    SpeedTest32bitsGray("32 bits on SAME gray-to-gray",
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"),
        cmsOpenProfileFromFile(DbgThread(), "graylcms2.icc", "r"), INTENT_PERCEPTUAL);

    printf("\n");
}
