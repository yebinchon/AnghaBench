
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_3__ {int num_components; int out_color_space; int jpeg_color_space; int saw_Adobe_marker; int marker_list; } ;


 int BYTES_SH (int) ;
 int CHANNELS_SH (int) ;
 int COLORSPACE_SH (int) ;
 TYPE_1__ Decompressor ;
 int EXTRA_SH (int) ;
 int FLAVOR_SH (int) ;
 int FatalError (char*,int) ;
 int HandleEXIF (TYPE_1__*) ;
 int HandlePhotoshopAPP13 (int ) ;
 scalar_t__ IsITUFax (int ) ;





 int PT_CMYK ;
 int PT_GRAY ;
 int PT_Lab ;
 int PT_RGB ;
 int lIsEXIF ;
 scalar_t__ lIsITUFax ;
 int lIsPhotoshopApp13 ;

__attribute__((used)) static
cmsUInt32Number GetInputPixelType(void)
{
     int space, bps, extra, ColorChannels, Flavor;

     lIsITUFax = IsITUFax(Decompressor.marker_list);
     lIsPhotoshopApp13 = HandlePhotoshopAPP13(Decompressor.marker_list);
     lIsEXIF = HandleEXIF(&Decompressor);

     ColorChannels = Decompressor.num_components;
     extra = 0;
     bps = 1;
     Flavor = 0;

     if (lIsITUFax) {

        space = PT_Lab;
        Decompressor.out_color_space = 128;
     }
     else
     switch (Decompressor.jpeg_color_space) {

     case 131:
              space = PT_GRAY;
              Decompressor.out_color_space = 131;
              break;

     case 130:
              space = PT_RGB;
              Decompressor.out_color_space = 130;
              break;

     case 128:
              space = PT_RGB;
              Decompressor.out_color_space = 130;
              break;

     case 132:
              space = PT_CMYK;
              Decompressor.out_color_space = 132;
              if (Decompressor.saw_Adobe_marker)
                                Flavor = 1;
              break;

     case 129:
              space = PT_CMYK;
              Decompressor.out_color_space = 132;
              if (Decompressor.saw_Adobe_marker)
                                Flavor = 1;
              break;

     default:
              FatalError("Unsupported color space (0x%x)", Decompressor.jpeg_color_space);
              return 0;
     }

     return (EXTRA_SH(extra)|CHANNELS_SH(ColorChannels)|BYTES_SH(bps)|COLORSPACE_SH(space)|FLAVOR_SH(Flavor));
}
