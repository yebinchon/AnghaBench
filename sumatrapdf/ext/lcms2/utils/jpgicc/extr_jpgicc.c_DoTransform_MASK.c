#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
struct TYPE_11__ {int output_width; int num_components; scalar_t__ output_scanline; scalar_t__ output_height; int /*<<< orphan*/  Y_density; int /*<<< orphan*/  X_density; int /*<<< orphan*/  density_unit; } ;
struct TYPE_10__ {int image_width; int num_components; int /*<<< orphan*/  Y_density; int /*<<< orphan*/  X_density; int /*<<< orphan*/  density_unit; } ;
typedef  scalar_t__ JSAMPROW ;

/* Variables and functions */
 TYPE_1__ Compressor ; 
 TYPE_2__ Decompressor ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ EmbedProfile ; 
 int PT_Lab ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int TRUE ; 
 scalar_t__ cOutProf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__*,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static
int FUNC11(cmsHTRANSFORM hXForm, int OutputColorSpace)
{
    JSAMPROW ScanLineIn;
    JSAMPROW ScanLineOut;


       //Preserve resolution values from the original
       // (Thanks to Robert Bergs for finding out this bug)
       Compressor.density_unit = Decompressor.density_unit;
       Compressor.X_density    = Decompressor.X_density;
       Compressor.Y_density    = Decompressor.Y_density;

      //  Compressor.write_JFIF_header = 1;

       FUNC8(&Decompressor);
       FUNC7(&Compressor, TRUE);

        if (OutputColorSpace == PT_Lab)
            FUNC1(&Compressor);

       // Embed the profile if needed
       if (EmbedProfile && cOutProf)
           FUNC0(cOutProf);

       ScanLineIn  = (JSAMPROW) FUNC10(Decompressor.output_width * Decompressor.num_components);
       ScanLineOut = (JSAMPROW) FUNC10(Compressor.image_width * Compressor.num_components);

       while (Decompressor.output_scanline <
                            Decompressor.output_height) {

       FUNC6(&Decompressor, &ScanLineIn, 1);

       FUNC2(NULL, hXForm, ScanLineIn, ScanLineOut, Decompressor.output_width);

       FUNC9(&Compressor, &ScanLineOut, 1);
       }

       FUNC3(ScanLineIn);
       FUNC3(ScanLineOut);

       FUNC5(&Decompressor);
       FUNC4(&Compressor);

       return TRUE;
}