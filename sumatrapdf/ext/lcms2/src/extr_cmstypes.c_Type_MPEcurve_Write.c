
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_7__ {scalar_t__ InputChannels; scalar_t__ Data; } ;
typedef TYPE_1__ cmsStage ;
struct TYPE_8__ {scalar_t__ (* Tell ) (int ,TYPE_2__*) ;} ;
typedef TYPE_2__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int _cmsTagBase ;
typedef int _cmsStageToneCurvesData ;


 int FALSE ;
 int TRUE ;
 int WriteMPECurve ;
 int WritePositionTable (int ,struct _cms_typehandler_struct*,TYPE_2__*,int ,scalar_t__,scalar_t__,int *,int ) ;
 int _cmsWriteUInt16Number (int ,TYPE_2__*,int ) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 scalar_t__ stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static
cmsBool Type_MPEcurve_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number BaseOffset;
    cmsStage* mpe = (cmsStage*) Ptr;
    _cmsStageToneCurvesData* Curves = (_cmsStageToneCurvesData*) mpe ->Data;

    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);


    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) mpe ->InputChannels)) return FALSE;
    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) mpe ->InputChannels)) return FALSE;

    if (!WritePositionTable(ContextID, self, io, 0,
                                mpe ->InputChannels, BaseOffset, Curves, WriteMPECurve)) return FALSE;


    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
}
