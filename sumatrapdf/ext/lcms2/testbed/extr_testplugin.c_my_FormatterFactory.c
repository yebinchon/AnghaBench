
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cmsUInt32Number ;
typedef scalar_t__ cmsFormatterDirection ;
struct TYPE_3__ {int Fmt16; int * member_0; } ;
typedef TYPE_1__ cmsFormatter ;
typedef int cmsContext ;


 scalar_t__ CMS_PACK_FLAGS_FLOAT ;
 scalar_t__ TYPE_RGB_565 ;
 scalar_t__ cmsFormatterInput ;
 int my_Unroll565 ;

cmsFormatter my_FormatterFactory(cmsContext ContextID, cmsUInt32Number Type,
                                  cmsFormatterDirection Dir,
                                  cmsUInt32Number dwFlags)
{
    cmsFormatter Result = { ((void*)0) };

    if ((Type == TYPE_RGB_565) &&
        !(dwFlags & CMS_PACK_FLAGS_FLOAT) &&
        (Dir == cmsFormatterInput)) {
            Result.Fmt16 = my_Unroll565;
    }
    return Result;
}
