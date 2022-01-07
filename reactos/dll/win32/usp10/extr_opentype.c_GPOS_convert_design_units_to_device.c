
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int lfWidth; } ;
struct TYPE_6__ {int tmAscent; int tmDescent; int tmInternalLeading; } ;
struct TYPE_7__ {scalar_t__ otmEMSquare; TYPE_1__ otmTextMetrics; } ;
typedef TYPE_2__ OUTLINETEXTMETRICW ;
typedef TYPE_3__ LOGFONTW ;


 int FIXME (char*) ;
 int TRACE (char*,int,int ) ;

__attribute__((used)) static void GPOS_convert_design_units_to_device(const OUTLINETEXTMETRICW *otm, const LOGFONTW *logfont,
        int desX, int desY, double *devX, double *devY)
{
    int emHeight = otm->otmTextMetrics.tmAscent + otm->otmTextMetrics.tmDescent - otm->otmTextMetrics.tmInternalLeading;

    TRACE("emHeight %i lfWidth %i\n",emHeight, logfont->lfWidth);
    *devX = (desX * emHeight) / (double)otm->otmEMSquare;
    *devY = (desY * emHeight) / (double)otm->otmEMSquare;
    if (logfont->lfWidth)
        FIXME("Font with lfWidth set not handled properly.\n");
}
