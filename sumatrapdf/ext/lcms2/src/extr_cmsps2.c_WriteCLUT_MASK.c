#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t cmsUInt32Number ;
struct TYPE_8__ {scalar_t__ Data; } ;
typedef  TYPE_2__ cmsStage ;
struct TYPE_9__ {int FirstComponent; int SecondComponent; char const* PreMaj; char const* PostMaj; char const* PreMin; char const* PostMin; int FixWhite; TYPE_4__* Pipeline; int /*<<< orphan*/  ColorSpace; int /*<<< orphan*/ * m; } ;
typedef  TYPE_3__ cmsPsSamplerCargo ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsColorSpaceSignature ;
struct TYPE_10__ {TYPE_1__* Params; } ;
typedef  TYPE_4__ _cmsStageCLutData ;
struct TYPE_7__ {size_t nInputs; int /*<<< orphan*/ * nSamples; } ;

/* Variables and functions */
 int /*<<< orphan*/  OutputValueSampler ; 
 int /*<<< orphan*/  SAMPLER_INSPECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC2(cmsContext ContextID, cmsIOHANDLER* m, cmsStage* mpe, const char* PreMaj,
                                             const char* PostMaj,
                                             const char* PreMin,
                                             const char* PostMin,
                                             int FixWhite,
                                             cmsColorSpaceSignature ColorSpace)
{
    cmsUInt32Number i;
    cmsPsSamplerCargo sc;

    sc.FirstComponent = -1;
    sc.SecondComponent = -1;
    sc.Pipeline = (_cmsStageCLutData *) mpe ->Data;
    sc.m   = m;
    sc.PreMaj = PreMaj;
    sc.PostMaj= PostMaj;

    sc.PreMin   = PreMin;
    sc.PostMin  = PostMin;
    sc.FixWhite = FixWhite;
    sc.ColorSpace = ColorSpace;

    FUNC0(ContextID, m, "[");

    for (i=0; i < sc.Pipeline->Params->nInputs; i++)
        FUNC0(ContextID, m, " %d ", sc.Pipeline->Params->nSamples[i]);

    FUNC0(ContextID, m, " [\n");

    FUNC1(ContextID, mpe, OutputValueSampler, (void*) &sc, SAMPLER_INSPECT);

    FUNC0(ContextID, m, PostMin);
    FUNC0(ContextID, m, PostMaj);
    FUNC0(ContextID, m, "] ");

}