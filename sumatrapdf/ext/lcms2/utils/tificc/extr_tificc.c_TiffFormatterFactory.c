
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef scalar_t__ cmsFormatterDirection ;
struct TYPE_3__ {int Fmt16; int * member_0; } ;
typedef TYPE_1__ cmsFormatter ;
typedef int cmsContext ;


 int CMS_PACK_FLAGS_FLOAT ;
 int PackTIFFLab16 ;
 int PackTIFFLab8 ;
 int T_BYTES (int) ;
 int UnrollTIFFLab16 ;
 int UnrollTIFFLab8 ;
 scalar_t__ cmsFormatterInput ;

__attribute__((used)) static
cmsFormatter TiffFormatterFactory(cmsContext ContextID, cmsUInt32Number Type,
                                  cmsFormatterDirection Dir,
                                  cmsUInt32Number dwFlags)
{
    cmsFormatter Result = { ((void*)0) };
    int bps = T_BYTES(Type);
    int IsTiffSpecial = (Type >> 23) & 1;

    if (IsTiffSpecial && !(dwFlags & CMS_PACK_FLAGS_FLOAT))
    {
        if (Dir == cmsFormatterInput)
        {
            Result.Fmt16 = (bps == 1) ? UnrollTIFFLab8 : UnrollTIFFLab16;
        }
        else
            Result.Fmt16 = (bps == 1) ? PackTIFFLab8 : PackTIFFLab16;
    }

    return Result;
}
