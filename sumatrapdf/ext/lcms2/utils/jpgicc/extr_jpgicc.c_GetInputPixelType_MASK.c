#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsUInt32Number ;
struct TYPE_3__ {int num_components; int out_color_space; int jpeg_color_space; int /*<<< orphan*/  saw_Adobe_marker; int /*<<< orphan*/  marker_list; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 TYPE_1__ Decompressor ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
#define  JCS_CMYK 132 
#define  JCS_GRAYSCALE 131 
#define  JCS_RGB 130 
#define  JCS_YCCK 129 
#define  JCS_YCbCr 128 
 int PT_CMYK ; 
 int PT_GRAY ; 
 int PT_Lab ; 
 int PT_RGB ; 
 int /*<<< orphan*/  lIsEXIF ; 
 scalar_t__ lIsITUFax ; 
 int /*<<< orphan*/  lIsPhotoshopApp13 ; 

__attribute__((used)) static
cmsUInt32Number FUNC9(void)
{
     int space, bps, extra, ColorChannels, Flavor;

     lIsITUFax         = FUNC8(Decompressor.marker_list);
     lIsPhotoshopApp13 = FUNC7(Decompressor.marker_list);
     lIsEXIF           = FUNC6(&Decompressor);

     ColorChannels = Decompressor.num_components;
     extra  = 0;            // Alpha = None
     bps    = 1;            // 8 bits
     Flavor = 0;            // Vanilla

     if (lIsITUFax) {

        space = PT_Lab;
        Decompressor.out_color_space = JCS_YCbCr;  // Fake to don't touch
     }
     else
     switch (Decompressor.jpeg_color_space) {

     case JCS_GRAYSCALE:        // monochrome
              space = PT_GRAY;
              Decompressor.out_color_space = JCS_GRAYSCALE;
              break;

     case JCS_RGB:             // red/green/blue
              space = PT_RGB;
              Decompressor.out_color_space = JCS_RGB;
              break;

     case JCS_YCbCr:               // Y/Cb/Cr (also known as YUV)
              space = PT_RGB;      // Let IJG code to do the conversion
              Decompressor.out_color_space = JCS_RGB;
              break;

     case JCS_CMYK:            // C/M/Y/K
              space = PT_CMYK;
              Decompressor.out_color_space = JCS_CMYK;
              if (Decompressor.saw_Adobe_marker)            // Adobe keeps CMYK inverted, so change flavor
                                Flavor = 1;                 // from vanilla to chocolate
              break;

     case JCS_YCCK:            // Y/Cb/Cr/K
              space = PT_CMYK;
              Decompressor.out_color_space = JCS_CMYK;
              if (Decompressor.saw_Adobe_marker)            // ditto
                                Flavor = 1;
              break;

     default:
              FUNC5("Unsupported color space (0x%x)", Decompressor.jpeg_color_space);
              return 0;
     }

     return (FUNC3(extra)|FUNC1(ColorChannels)|FUNC0(bps)|FUNC2(space)|FUNC4(Flavor));
}