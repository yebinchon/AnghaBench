
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * n; } ;
typedef TYPE_2__ cmsVEC3 ;
typedef int cmsUInt32Number ;
typedef int cmsToneCurve ;
typedef int cmsPipeline ;
struct TYPE_9__ {TYPE_1__* v; } ;
typedef TYPE_3__ cmsMAT3 ;
typedef int cmsContext ;
typedef scalar_t__ cmsBool ;
struct TYPE_10__ {void** Off; void*** Mat; int Shaper2B; int Shaper2G; int Shaper2R; int Shaper1B; int Shaper1G; int Shaper1R; } ;
struct TYPE_7__ {int * n; } ;
typedef TYPE_4__ MatShaper8Data ;


 void* DOUBLE_TO_1FIXED14 (int ) ;
 int DupMatShaper ;
 scalar_t__ FALSE ;
 int FillFirstShaper (int ,int ,int *) ;
 int FillSecondShaper (int ,int ,int *,scalar_t__) ;
 int FreeMatShaper ;
 int MatShaperEval16 ;
 int OPTIMIZED_SH (int) ;
 scalar_t__ TRUE ;
 scalar_t__ _cmsFormatterIs8bit (int ) ;
 scalar_t__ _cmsMalloc (int ,int) ;
 int _cmsPipelineSetOptimizationParameters (int ,int *,int ,void*,int ,int ) ;

__attribute__((used)) static
cmsBool SetMatShaper(cmsContext ContextID, cmsPipeline* Dest, cmsToneCurve* Curve1[3], cmsMAT3* Mat, cmsVEC3* Off, cmsToneCurve* Curve2[3], cmsUInt32Number* OutputFormat)
{
    MatShaper8Data* p;
    int i, j;
    cmsBool Is8Bits = _cmsFormatterIs8bit(*OutputFormat);


    p = (MatShaper8Data*) _cmsMalloc(ContextID, sizeof(MatShaper8Data));
    if (p == ((void*)0)) return FALSE;


    FillFirstShaper(ContextID, p ->Shaper1R, Curve1[0]);
    FillFirstShaper(ContextID, p ->Shaper1G, Curve1[1]);
    FillFirstShaper(ContextID, p ->Shaper1B, Curve1[2]);

    FillSecondShaper(ContextID, p ->Shaper2R, Curve2[0], Is8Bits);
    FillSecondShaper(ContextID, p ->Shaper2G, Curve2[1], Is8Bits);
    FillSecondShaper(ContextID, p ->Shaper2B, Curve2[2], Is8Bits);


    for (i=0; i < 3; i++) {
        for (j=0; j < 3; j++) {
            p ->Mat[i][j] = DOUBLE_TO_1FIXED14(Mat->v[i].n[j]);
        }
    }

    for (i=0; i < 3; i++) {

        if (Off == ((void*)0)) {
            p ->Off[i] = 0;
        }
        else {
            p ->Off[i] = DOUBLE_TO_1FIXED14(Off->n[i]);
        }
    }


    if (Is8Bits)
        *OutputFormat |= OPTIMIZED_SH(1);


    _cmsPipelineSetOptimizationParameters(ContextID, Dest, MatShaperEval16, (void*) p, FreeMatShaper, DupMatShaper);
    return TRUE;
}
