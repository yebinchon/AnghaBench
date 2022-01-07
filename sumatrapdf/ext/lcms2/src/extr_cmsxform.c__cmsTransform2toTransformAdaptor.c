
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _cmstransform_struct {int (* OldXform ) (int ,struct _cmstransform_struct*,void*,void*,scalar_t__,int ) ;} ;
typedef int cmsUInt8Number ;
typedef scalar_t__ cmsUInt32Number ;
struct TYPE_4__ {scalar_t__ BytesPerLineIn; scalar_t__ BytesPerLineOut; int BytesPerPlaneIn; } ;
typedef TYPE_1__ cmsStride ;
typedef int cmsContext ;


 int _cmsHandleExtraChannels (int ,struct _cmstransform_struct*,void const*,void*,scalar_t__,scalar_t__,TYPE_1__ const*) ;
 int stub1 (int ,struct _cmstransform_struct*,void*,void*,scalar_t__,int ) ;

__attribute__((used)) static
void _cmsTransform2toTransformAdaptor(cmsContext ContextID, struct _cmstransform_struct *CMMcargo,
                                      const void* InputBuffer,
                                      void* OutputBuffer,
                                      cmsUInt32Number PixelsPerLine,
                                      cmsUInt32Number LineCount,
                                      const cmsStride* Stride)
{

       cmsUInt32Number i, strideIn, strideOut;

       _cmsHandleExtraChannels(ContextID, CMMcargo, InputBuffer, OutputBuffer, PixelsPerLine, LineCount, Stride);

       strideIn = 0;
       strideOut = 0;

       for (i = 0; i < LineCount; i++) {

              void *accum = (cmsUInt8Number*)InputBuffer + strideIn;
              void *output = (cmsUInt8Number*)OutputBuffer + strideOut;

              CMMcargo->OldXform(ContextID, CMMcargo, accum, output, PixelsPerLine, Stride->BytesPerPlaneIn);

              strideIn += Stride->BytesPerLineIn;
              strideOut += Stride->BytesPerLineOut;
       }
}
