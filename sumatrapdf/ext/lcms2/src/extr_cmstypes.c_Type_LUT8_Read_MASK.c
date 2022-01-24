#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  int cmsUInt8Number ;
typedef  scalar_t__ cmsUInt32Number ;
typedef  int cmsUInt16Number ;
typedef  void cmsPipeline ;
typedef  int /*<<< orphan*/  cmsMAT3 ;
struct TYPE_7__ {int (* Read ) (int /*<<< orphan*/ ,TYPE_1__*,int*,scalar_t__,int) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,void*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int cmsMAXCHANNELS ; 
 void* FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,int*,scalar_t__,int) ; 
 scalar_t__ FUNC15 (int,int,int) ; 

__attribute__((used)) static
void *FUNC16(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number InputChannels, OutputChannels, CLUTpoints;
    cmsUInt8Number* Temp = NULL;
    cmsPipeline* NewLUT = NULL;
    cmsUInt32Number nTabSize, i;
    cmsFloat64Number Matrix[3*3];
    FUNC13(self);

    *nItems = 0;

    if (!FUNC7(ContextID, io, &InputChannels)) goto Error;
    if (!FUNC7(ContextID, io, &OutputChannels)) goto Error;
    if (!FUNC7(ContextID, io, &CLUTpoints)) goto Error;

     if (CLUTpoints == 1) goto Error; // Impossible value, 0 for no CLUT and then 2 at least

    // Padding
    if (!FUNC7(ContextID, io, NULL)) goto Error;

    // Do some checking
    if (InputChannels == 0 || InputChannels > cmsMAXCHANNELS)  goto Error;
    if (OutputChannels == 0 || OutputChannels > cmsMAXCHANNELS) goto Error;

   // Allocates an empty Pipeline
    NewLUT = FUNC8(ContextID, InputChannels, OutputChannels);
    if (NewLUT == NULL) goto Error;

    // Read the Matrix
    if (!FUNC6(ContextID, io,  &Matrix[0])) goto Error;
    if (!FUNC6(ContextID, io,  &Matrix[1])) goto Error;
    if (!FUNC6(ContextID, io,  &Matrix[2])) goto Error;
    if (!FUNC6(ContextID, io,  &Matrix[3])) goto Error;
    if (!FUNC6(ContextID, io,  &Matrix[4])) goto Error;
    if (!FUNC6(ContextID, io,  &Matrix[5])) goto Error;
    if (!FUNC6(ContextID, io,  &Matrix[6])) goto Error;
    if (!FUNC6(ContextID, io,  &Matrix[7])) goto Error;
    if (!FUNC6(ContextID, io,  &Matrix[8])) goto Error;


    // Only operates if not identity...
    if ((InputChannels == 3) && !FUNC4(ContextID, (cmsMAT3*) Matrix)) {

        if (!FUNC10(ContextID, NewLUT, cmsAT_BEGIN, FUNC12(ContextID, 3, 3, Matrix, NULL)))
            goto Error;
    }

    // Get input tables
    if (!FUNC1(ContextID, io,  NewLUT, InputChannels)) goto Error;

    // Get 3D CLUT. Check the overflow....
    nTabSize = FUNC15(OutputChannels, CLUTpoints, InputChannels);
    if (nTabSize == (cmsUInt32Number) -1) goto Error;
    if (nTabSize > 0) {

        cmsUInt16Number *PtrW, *T;

        PtrW = T  = (cmsUInt16Number*) FUNC2(ContextID, nTabSize, sizeof(cmsUInt16Number));
        if (T  == NULL) goto Error;

        Temp = (cmsUInt8Number*) FUNC5(ContextID, nTabSize);
        if (Temp == NULL) {
            FUNC3(ContextID, T);
            goto Error;
        }

        if (io ->Read(ContextID, io, Temp, nTabSize, 1) != 1) {
            FUNC3(ContextID, T);
            FUNC3(ContextID, Temp);
            goto Error;
        }

        for (i = 0; i < nTabSize; i++) {

            *PtrW++ = FUNC0(Temp[i]);
        }
        FUNC3(ContextID, Temp);
        Temp = NULL;

        if (!FUNC10(ContextID, NewLUT, cmsAT_END, FUNC11(ContextID, CLUTpoints, InputChannels, OutputChannels, T))) {
            FUNC3(ContextID, T);
            goto Error;
        }
        FUNC3(ContextID, T);
    }


    // Get output tables
    if (!FUNC1(ContextID, io,  NewLUT, OutputChannels)) goto Error;

    *nItems = 1;
    return NewLUT;

Error:
    if (NewLUT != NULL) FUNC9(ContextID, NewLUT);
    return NULL;

    FUNC13(SizeOfTag);
}