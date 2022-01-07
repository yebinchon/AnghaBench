
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int * cmsFormatterAlphaFn ;
typedef int cmsContext ;
struct TYPE_2__ {int member_5; int member_4; int const member_3; int const member_2; int const member_1; int member_0; } ;


 int FormatterPos (int ) ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 int cmsSignalError (int ,int ,char*) ;
__attribute__((used)) static
cmsFormatterAlphaFn _cmsGetFormatterAlpha(cmsContext id, cmsUInt32Number in, cmsUInt32Number out)
{
static cmsFormatterAlphaFn FormattersAlpha[6][6] = {

                     { 157, 147, 146, 143, 144, 145 },
                     { 151, 160, 152, 148, 149, 150 },
                     { 156, 152, 160, 153,154, 155 },
                     { 130, 132, 131, 160, 128, 129 },
                     { 135, 137, 136, 133, 159, 134 },
                     { 140, 142, 141, 138, 139, 158 }};

        int in_n = FormatterPos(in);
        int out_n = FormatterPos(out);

        if (in_n < 0 || out_n < 0 || in_n > 4 || out_n > 4) {

               cmsSignalError(id, cmsERROR_UNKNOWN_EXTENSION, "Unrecognized alpha channel width");
               return ((void*)0);
        }

        return FormattersAlpha[in_n][out_n];
}
