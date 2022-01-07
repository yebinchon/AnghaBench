
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;


 int BYTES_SH (int) ;
 int CHANNELS_SH (int) ;
 int COLORSPACE_SH (int) ;
 int ChanCountFromPixelType (int) ;
 int FLOAT_SH (int) ;
 int PLANAR_SH (int) ;
 int T_PLANAR (int) ;

__attribute__((used)) static
cmsUInt32Number ComputeOutputFormatDescriptor(cmsUInt32Number dwInput, int OutColorSpace, int bps)
{
    int IsPlanar = T_PLANAR(dwInput);
    int Channels = ChanCountFromPixelType(OutColorSpace);
    int IsFlt = (bps == 0) || (bps == 4);

    return (FLOAT_SH(IsFlt)|COLORSPACE_SH(OutColorSpace)|PLANAR_SH(IsPlanar)|CHANNELS_SH(Channels)|BYTES_SH(bps));
}
