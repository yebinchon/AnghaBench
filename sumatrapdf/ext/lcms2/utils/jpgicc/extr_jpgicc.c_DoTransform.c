
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int cmsHTRANSFORM ;
struct TYPE_11__ {int output_width; int num_components; scalar_t__ output_scanline; scalar_t__ output_height; int Y_density; int X_density; int density_unit; } ;
struct TYPE_10__ {int image_width; int num_components; int Y_density; int X_density; int density_unit; } ;
typedef scalar_t__ JSAMPROW ;


 TYPE_1__ Compressor ;
 TYPE_2__ Decompressor ;
 int DoEmbedProfile (scalar_t__) ;
 scalar_t__ EmbedProfile ;
 int PT_Lab ;
 int SetITUFax (TYPE_1__*) ;
 int TRUE ;
 scalar_t__ cOutProf ;
 int cmsDoTransform (int *,int ,scalar_t__,scalar_t__,int) ;
 int free (scalar_t__) ;
 int jpeg_finish_compress (TYPE_1__*) ;
 int jpeg_finish_decompress (TYPE_2__*) ;
 int jpeg_read_scanlines (TYPE_2__*,scalar_t__*,int) ;
 int jpeg_start_compress (TYPE_1__*,int) ;
 int jpeg_start_decompress (TYPE_2__*) ;
 int jpeg_write_scanlines (TYPE_1__*,scalar_t__*,int) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static
int DoTransform(cmsHTRANSFORM hXForm, int OutputColorSpace)
{
    JSAMPROW ScanLineIn;
    JSAMPROW ScanLineOut;




       Compressor.density_unit = Decompressor.density_unit;
       Compressor.X_density = Decompressor.X_density;
       Compressor.Y_density = Decompressor.Y_density;



       jpeg_start_decompress(&Decompressor);
       jpeg_start_compress(&Compressor, TRUE);

        if (OutputColorSpace == PT_Lab)
            SetITUFax(&Compressor);


       if (EmbedProfile && cOutProf)
           DoEmbedProfile(cOutProf);

       ScanLineIn = (JSAMPROW) malloc(Decompressor.output_width * Decompressor.num_components);
       ScanLineOut = (JSAMPROW) malloc(Compressor.image_width * Compressor.num_components);

       while (Decompressor.output_scanline <
                            Decompressor.output_height) {

       jpeg_read_scanlines(&Decompressor, &ScanLineIn, 1);

       cmsDoTransform(((void*)0), hXForm, ScanLineIn, ScanLineOut, Decompressor.output_width);

       jpeg_write_scanlines(&Compressor, &ScanLineOut, 1);
       }

       free(ScanLineIn);
       free(ScanLineOut);

       jpeg_finish_decompress(&Decompressor);
       jpeg_finish_compress(&Compressor);

       return TRUE;
}
