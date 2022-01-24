#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  scalar_t__ cmsUInt8Number ;
typedef  scalar_t__ cmsUInt32Number ;
typedef  void cmsPipeline ;
struct TYPE_10__ {scalar_t__ (* Tell ) (int /*<<< orphan*/ ,TYPE_1__*) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  _cmsTagBase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 scalar_t__ cmsMAXCHANNELS ; 
 void* FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static
void* FUNC11(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt32Number      BaseOffset;
    cmsUInt8Number       inputChan;      // Number of input channels
    cmsUInt8Number       outputChan;     // Number of output channels
    cmsUInt32Number      offsetB;        // Offset to first "B" curve
    cmsUInt32Number      offsetMat;      // Offset to matrix
    cmsUInt32Number      offsetM;        // Offset to first "M" curve
    cmsUInt32Number      offsetC;        // Offset to CLUT
    cmsUInt32Number      offsetA;        // Offset to first "A" curve
    cmsPipeline* NewLUT = NULL;


    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);

    if (!FUNC5(ContextID, io, &inputChan)) return NULL;
    if (!FUNC5(ContextID, io, &outputChan)) return NULL;

    if (!FUNC3(ContextID, io, NULL)) return NULL;

    if (!FUNC4(ContextID, io, &offsetB)) return NULL;
    if (!FUNC4(ContextID, io, &offsetMat)) return NULL;
    if (!FUNC4(ContextID, io, &offsetM)) return NULL;
    if (!FUNC4(ContextID, io, &offsetC)) return NULL;
    if (!FUNC4(ContextID, io, &offsetA)) return NULL;

    if (inputChan == 0 || inputChan >= cmsMAXCHANNELS) return NULL;
    if (outputChan == 0 || outputChan >= cmsMAXCHANNELS) return NULL;

    // Allocates an empty LUT
    NewLUT = FUNC6(ContextID, inputChan, outputChan);
    if (NewLUT == NULL) return NULL;

    if (offsetA!= 0) {
        if (!FUNC8(ContextID, NewLUT, cmsAT_END, FUNC2(ContextID, self, io, BaseOffset + offsetA, inputChan)))
            goto Error;
    }

    if (offsetC != 0) {
        if (!FUNC8(ContextID, NewLUT, cmsAT_END, FUNC0(ContextID, self, io, BaseOffset + offsetC, inputChan, outputChan)))
            goto Error;
    }

    if (offsetM != 0) {
        if (!FUNC8(ContextID, NewLUT, cmsAT_END, FUNC2(ContextID, self, io, BaseOffset + offsetM, outputChan)))
            goto Error;
    }

    if (offsetMat != 0) {
        if (!FUNC8(ContextID, NewLUT, cmsAT_END, FUNC1(ContextID, self, io, BaseOffset + offsetMat)))
            goto Error;
    }

    if (offsetB != 0) {
        if (!FUNC8(ContextID, NewLUT, cmsAT_END, FUNC2(ContextID, self, io, BaseOffset + offsetB, outputChan)))
            goto Error;
    }

    *nItems = 1;
    return NewLUT;
Error:
    FUNC7(ContextID, NewLUT);
    return NULL;

    FUNC9(SizeOfTag);
}