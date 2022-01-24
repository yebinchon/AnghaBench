#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  int cmsUInt8Number ;
typedef  scalar_t__ cmsUInt32Number ;
typedef  int cmsUInt16Number ;
typedef  void cmsPipeline ;
typedef  int /*<<< orphan*/  cmsMAT3 ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int cmsMAXCHANNELS ; 
 void* FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int,int,int) ; 

__attribute__((used)) static
void *FUNC15(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number InputChannels, OutputChannels, CLUTpoints;
    cmsPipeline* NewLUT = NULL;
    cmsUInt32Number nTabSize;
    cmsFloat64Number Matrix[3*3];
    cmsUInt16Number InputEntries, OutputEntries;
    FUNC13(self);

    *nItems = 0;

    if (!FUNC7(ContextID, io, &InputChannels)) return NULL;
    if (!FUNC7(ContextID, io, &OutputChannels)) return NULL;
    if (!FUNC7(ContextID, io, &CLUTpoints)) return NULL;   // 255 maximum

    // Padding
    if (!FUNC7(ContextID, io, NULL)) return NULL;

    // Do some checking
    if (InputChannels == 0 || InputChannels > cmsMAXCHANNELS)  goto Error;
    if (OutputChannels == 0 || OutputChannels > cmsMAXCHANNELS) goto Error;

    // Allocates an empty LUT
    NewLUT = FUNC8(ContextID, InputChannels, OutputChannels);
    if (NewLUT == NULL) goto Error;

    // Read the Matrix
    if (!FUNC4(ContextID, io,  &Matrix[0])) goto Error;
    if (!FUNC4(ContextID, io,  &Matrix[1])) goto Error;
    if (!FUNC4(ContextID, io,  &Matrix[2])) goto Error;
    if (!FUNC4(ContextID, io,  &Matrix[3])) goto Error;
    if (!FUNC4(ContextID, io,  &Matrix[4])) goto Error;
    if (!FUNC4(ContextID, io,  &Matrix[5])) goto Error;
    if (!FUNC4(ContextID, io,  &Matrix[6])) goto Error;
    if (!FUNC4(ContextID, io,  &Matrix[7])) goto Error;
    if (!FUNC4(ContextID, io,  &Matrix[8])) goto Error;


    // Only operates on 3 channels
    if ((InputChannels == 3) && !FUNC3(ContextID, (cmsMAT3*) Matrix)) {

        if (!FUNC10(ContextID, NewLUT, cmsAT_END, FUNC12(ContextID, 3, 3, Matrix, NULL)))
            goto Error;
    }

    if (!FUNC6(ContextID, io, &InputEntries)) goto Error;
    if (!FUNC6(ContextID, io, &OutputEntries)) goto Error;

    if (InputEntries > 0x7FFF || OutputEntries > 0x7FFF) goto Error;
    if (CLUTpoints == 1) goto Error; // Impossible value, 0 for no CLUT and then 2 at least

    // Get input tables
    if (!FUNC0(ContextID, io,  NewLUT, InputChannels, InputEntries)) goto Error;

    // Get 3D CLUT
    nTabSize = FUNC14(OutputChannels, CLUTpoints, InputChannels);
    if (nTabSize == (cmsUInt32Number) -1) goto Error;
    if (nTabSize > 0) {

        cmsUInt16Number *T;

        T  = (cmsUInt16Number*) FUNC1(ContextID, nTabSize, sizeof(cmsUInt16Number));
        if (T  == NULL) goto Error;

        if (!FUNC5(ContextID, io, nTabSize, T)) {
            FUNC2(ContextID, T);
            goto Error;
        }

        if (!FUNC10(ContextID, NewLUT, cmsAT_END, FUNC11(ContextID, CLUTpoints, InputChannels, OutputChannels, T))) {
            FUNC2(ContextID, T);
            goto Error;
        }
        FUNC2(ContextID, T);
    }


    // Get output tables
    if (!FUNC0(ContextID, io,  NewLUT, OutputChannels, OutputEntries)) goto Error;

    *nItems = 1;
    return NewLUT;

Error:
    if (NewLUT != NULL) FUNC9(ContextID, NewLUT);
    return NULL;

    FUNC13(SizeOfTag);
}