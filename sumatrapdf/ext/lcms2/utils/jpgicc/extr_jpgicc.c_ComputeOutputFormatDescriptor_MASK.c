#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsUInt32Number ;
struct TYPE_2__ {int /*<<< orphan*/  write_Adobe_marker; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 TYPE_1__ Compressor ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int) ; 
#define  PT_CMY 134 
#define  PT_CMYK 133 
#define  PT_GRAY 132 
#define  PT_Lab 131 
#define  PT_RGB 130 
#define  PT_YCbCr 129 
#define  PT_YUV 128 
 int FUNC6 (int) ; 

__attribute__((used)) static
cmsUInt32Number FUNC7(cmsUInt32Number dwInput, int OutColorSpace)
{
    int IsPlanar  = FUNC6(dwInput);
    int Channels  = 0;
    int Flavor    = 0;

    switch (OutColorSpace) {

   case PT_GRAY:
       Channels = 1;
       break;
   case PT_RGB:
   case PT_CMY:
   case PT_Lab:
   case PT_YUV:
   case PT_YCbCr:
       Channels = 3;
       break;

   case PT_CMYK:
       if (Compressor.write_Adobe_marker)   // Adobe keeps CMYK inverted, so change flavor to chocolate
           Flavor = 1;
       Channels = 4;
       break;
   default:
       FUNC4("Unsupported output color space");
    }

    return (FUNC2(OutColorSpace)|FUNC5(IsPlanar)|FUNC1(Channels)|FUNC0(1)|FUNC3(Flavor));
}