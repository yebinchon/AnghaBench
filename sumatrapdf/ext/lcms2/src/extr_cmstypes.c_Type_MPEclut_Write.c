
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_12__ {scalar_t__ InputChannels; scalar_t__ OutputChannels; scalar_t__ Data; } ;
typedef TYPE_3__ cmsStage ;
struct TYPE_13__ {int (* Write ) (int ,TYPE_4__*,int,scalar_t__*) ;} ;
typedef TYPE_4__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef scalar_t__ cmsBool ;
struct TYPE_11__ {int * TFloat; } ;
struct TYPE_14__ {scalar_t__ HasFloatValues; size_t nEntries; TYPE_2__ Tab; TYPE_1__* Params; } ;
typedef TYPE_5__ _cmsStageCLutData ;
struct TYPE_10__ {scalar_t__* nSamples; } ;
typedef int Dimensions8 ;


 scalar_t__ FALSE ;
 scalar_t__ MAX_INPUT_DIMENSIONS ;
 scalar_t__ TRUE ;
 int _cmsWriteFloat32Number (int ,TYPE_4__*,int ) ;
 int _cmsWriteUInt16Number (int ,TYPE_4__*,int ) ;
 int cmsUNUSED_PARAMETER (size_t) ;
 int memset (scalar_t__*,int ,int) ;
 int stub1 (int ,TYPE_4__*,int,scalar_t__*) ;

__attribute__((used)) static
cmsBool Type_MPEclut_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt8Number Dimensions8[16];
    cmsUInt32Number i;
    cmsStage* mpe = (cmsStage*) Ptr;
    _cmsStageCLutData* clut = (_cmsStageCLutData*) mpe ->Data;


    if (mpe -> InputChannels > MAX_INPUT_DIMENSIONS) return FALSE;


    if (clut ->HasFloatValues == FALSE) return FALSE;

    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) mpe ->InputChannels)) return FALSE;
    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) mpe ->OutputChannels)) return FALSE;

    memset(Dimensions8, 0, sizeof(Dimensions8));

    for (i=0; i < mpe ->InputChannels; i++)
        Dimensions8[i] = (cmsUInt8Number) clut ->Params ->nSamples[i];

    if (!io ->Write(ContextID, io, 16, Dimensions8)) return FALSE;

    for (i=0; i < clut ->nEntries; i++) {

        if (!_cmsWriteFloat32Number(ContextID, io, clut ->Tab.TFloat[i])) return FALSE;
    }

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
