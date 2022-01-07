
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int input_components; int num_components; int write_JFIF_header; TYPE_1__* comp_info; void* jpeg_color_space; void* in_color_space; } ;
struct TYPE_6__ {int h_samp_factor; int v_samp_factor; } ;
typedef void* J_COLOR_SPACE ;


 TYPE_2__ Compressor ;
 int FatalError (char*) ;
 void* JCS_CMYK ;
 void* JCS_GRAYSCALE ;
 void* JCS_RGB ;
 void* JCS_YCCK ;
 void* JCS_YCbCr ;





 int jpegQuality ;
 int jpeg_set_colorspace (TYPE_2__*,void*) ;
 int jpeg_set_defaults (TYPE_2__*) ;
 int jpeg_set_quality (TYPE_2__*,int,int) ;

__attribute__((used)) static
void WriteOutputFields(int OutputColorSpace)
{
    J_COLOR_SPACE in_space, jpeg_space;
    int components;

    switch (OutputColorSpace) {

    case 131: in_space = jpeg_space = JCS_GRAYSCALE;
                  components = 1;
                  break;

    case 129: in_space = JCS_RGB;
                  jpeg_space = JCS_YCbCr;
                  components = 3;
                  break;

    case 128: in_space = jpeg_space = JCS_YCbCr;
                   components = 3;
                   break;

    case 132: in_space = JCS_CMYK;
                  jpeg_space = JCS_YCCK;
                  components = 4;
                  break;

    case 130: in_space = jpeg_space = JCS_YCbCr;
                  components = 3;
                  break;
    default:
                 FatalError("Unsupported output color space");
                 return;
    }


    if (jpegQuality >= 100) {


        jpeg_space = in_space;
    }

    Compressor.in_color_space = in_space;
    Compressor.jpeg_color_space = jpeg_space;
    Compressor.input_components = Compressor.num_components = components;
    jpeg_set_defaults(&Compressor);
    jpeg_set_colorspace(&Compressor, jpeg_space);



    if (OutputColorSpace == 132)
        Compressor.write_JFIF_header = 1;


    jpeg_set_quality(&Compressor, jpegQuality, 1);
    if (jpegQuality >= 70) {

      int i;
      for(i=0; i < Compressor.num_components; i++) {

            Compressor.comp_info[i].h_samp_factor = 1;
            Compressor.comp_info[i].v_samp_factor = 1;
      }

    }

}
