
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsColorSpaceSignature ;


 int BYTES_SH (int) ;
 int CHANNELS_SH (int) ;
 int COLORSPACE_SH (int ) ;
 int FLOAT_SH (int) ;
 int PLANAR_SH (int) ;
 int _cmsLCMScolorSpace (int ) ;
 int cmsChannelsOf (int ) ;

__attribute__((used)) static
cmsUInt32Number MakeFormatDescriptor(cmsColorSpaceSignature ColorSpace, int Bytes)
{
 int IsFloat = (Bytes == 0 || Bytes == 4) ? 1 : 0;
 int Channels = cmsChannelsOf(ColorSpace);
 return FLOAT_SH(IsFloat)|COLORSPACE_SH(_cmsLCMScolorSpace(ColorSpace))|BYTES_SH(Bytes)|CHANNELS_SH(Channels)|PLANAR_SH(1);
}
