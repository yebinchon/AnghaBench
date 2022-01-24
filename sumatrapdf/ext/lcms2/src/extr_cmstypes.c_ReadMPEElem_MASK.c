#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsTagTypeSignature ;
struct TYPE_4__ {scalar_t__ (* ReadPtr ) (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ cmsTagTypeHandler ;
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  scalar_t__ cmsStageSignature ;
typedef  int /*<<< orphan*/  cmsStage ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_5__ {int /*<<< orphan*/  TagTypes; } ;
typedef  TYPE_2__ _cmsTagTypePluginChunkType ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPEPlugin ; 
 int /*<<< orphan*/  SupportedMPEtypes ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/  cmsERROR_UNKNOWN_EXTENSION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsBool FUNC8(cmsContext ContextID, struct _cms_typehandler_struct* self,
                    cmsIOHANDLER* io,
                    void* Cargo,
                    cmsUInt32Number n,
                    cmsUInt32Number SizeOfTag)
{
    cmsStageSignature ElementSig;
    cmsTagTypeHandler* TypeHandler;
    cmsUInt32Number nItems;
    cmsPipeline *NewLUT = (cmsPipeline *) Cargo;
    _cmsTagTypePluginChunkType* MPETypePluginChunk  = ( _cmsTagTypePluginChunkType*) FUNC1(ContextID, MPEPlugin);


    // Take signature and channels for each element.
    if (!FUNC2(ContextID, io, (cmsUInt32Number*) &ElementSig)) return FALSE;

    // The reserved placeholder
    if (!FUNC2(ContextID, io, NULL)) return FALSE;

    // Read diverse MPE types
    TypeHandler = FUNC0((cmsTagTypeSignature) ElementSig, MPETypePluginChunk ->TagTypes, SupportedMPEtypes);
    if (TypeHandler == NULL)  {

        char String[5];

        FUNC3(String, (cmsTagSignature) ElementSig);

        // An unknown element was found.
        FUNC5(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unknown MPE type '%s' found.", String);
        return FALSE;
    }

    // If no read method, just ignore the element (valid for cmsSigBAcsElemType and cmsSigEAcsElemType)
    // Read the MPE. No size is given
    if (TypeHandler ->ReadPtr != NULL) {

        // This is a real element which should be read and processed
        if (!FUNC4(ContextID, NewLUT, cmsAT_END, (cmsStage*) TypeHandler ->ReadPtr(ContextID, self, io, &nItems, SizeOfTag)))
            return FALSE;
    }

    return TRUE;

    FUNC6(SizeOfTag);
    FUNC6(n);
}