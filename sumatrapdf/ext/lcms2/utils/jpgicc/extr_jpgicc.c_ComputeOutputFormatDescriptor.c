
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_2__ {int write_Adobe_marker; } ;


 int BYTES_SH (int) ;
 int CHANNELS_SH (int) ;
 int COLORSPACE_SH (int) ;
 TYPE_1__ Compressor ;
 int FLAVOR_SH (int) ;
 int FatalError (char*) ;
 int PLANAR_SH (int) ;







 int T_PLANAR (int) ;

__attribute__((used)) static
cmsUInt32Number ComputeOutputFormatDescriptor(cmsUInt32Number dwInput, int OutColorSpace)
{
    int IsPlanar = T_PLANAR(dwInput);
    int Channels = 0;
    int Flavor = 0;

    switch (OutColorSpace) {

   case 132:
       Channels = 1;
       break;
   case 130:
   case 134:
   case 131:
   case 128:
   case 129:
       Channels = 3;
       break;

   case 133:
       if (Compressor.write_Adobe_marker)
           Flavor = 1;
       Channels = 4;
       break;
   default:
       FatalError("Unsupported output color space");
    }

    return (COLORSPACE_SH(OutColorSpace)|PLANAR_SH(IsPlanar)|CHANNELS_SH(Channels)|BYTES_SH(1)|FLAVOR_SH(Flavor));
}
