#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  size_t cmsUInt32Number ;
typedef  size_t cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsTagTypeSignature ;
struct TYPE_24__ {int /*<<< orphan*/  (* WritePtr ) (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_4__*,TYPE_2__*,int) ;} ;
typedef  TYPE_1__ cmsTagTypeHandler ;
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  size_t cmsStageSignature ;
struct TYPE_25__ {size_t Type; struct TYPE_25__* Next; } ;
typedef  TYPE_2__ cmsStage ;
struct TYPE_26__ {TYPE_2__* Elements; } ;
typedef  TYPE_3__ cmsPipeline ;
struct TYPE_27__ {size_t (* Tell ) (int /*<<< orphan*/ ,TYPE_4__*) ;int /*<<< orphan*/  (* Seek ) (int /*<<< orphan*/ ,TYPE_4__*,size_t) ;} ;
typedef  TYPE_4__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_28__ {int /*<<< orphan*/  TagTypes; } ;
typedef  TYPE_5__ _cmsTagTypePluginChunkType ;
typedef  int /*<<< orphan*/  _cmsTagBase ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPEPlugin ; 
 int /*<<< orphan*/  SupportedMPEtypes ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  cmsERROR_UNKNOWN_EXTENSION ; 
 size_t FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 size_t FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (size_t) ; 
 size_t FUNC13 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 size_t FUNC14 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 size_t FUNC15 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 size_t FUNC16 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_4__*,TYPE_2__*,int) ; 
 size_t FUNC18 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 size_t FUNC19 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_4__*,size_t) ; 

__attribute__((used)) static
cmsBool FUNC22(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number i, BaseOffset, DirectoryPos, CurrentPos;
    cmsUInt32Number inputChan, outputChan;
    cmsUInt32Number ElemCount;
    cmsUInt32Number *ElementOffsets = NULL, *ElementSizes = NULL, Before;
    cmsStageSignature ElementSig;
    cmsPipeline* Lut = (cmsPipeline*) Ptr;
    cmsStage* Elem = Lut ->Elements;
    cmsTagTypeHandler* TypeHandler;
    _cmsTagTypePluginChunkType* MPETypePluginChunk  = ( _cmsTagTypePluginChunkType*) FUNC2(ContextID, MPEPlugin);

    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);

    inputChan  = FUNC8(ContextID, Lut);
    outputChan = FUNC9(ContextID, Lut);
    ElemCount  = FUNC10(ContextID, Lut);

    ElementOffsets = (cmsUInt32Number *) FUNC1(ContextID, ElemCount, sizeof(cmsUInt32Number));
    if (ElementOffsets == NULL) goto Error;

    ElementSizes = (cmsUInt32Number *) FUNC1(ContextID, ElemCount, sizeof(cmsUInt32Number));
    if (ElementSizes == NULL) goto Error;

    // Write the head
    if (!FUNC6(ContextID, io, (cmsUInt16Number) inputChan)) goto Error;
    if (!FUNC6(ContextID, io, (cmsUInt16Number) outputChan)) goto Error;
    if (!FUNC7(ContextID, io, (cmsUInt16Number) ElemCount)) goto Error;

    DirectoryPos = io ->Tell(ContextID, io);

    // Write a fake directory to be filled latter on
    for (i=0; i < ElemCount; i++) {
        if (!FUNC7(ContextID, io, 0)) goto Error;  // Offset
        if (!FUNC7(ContextID, io, 0)) goto Error;  // size
    }

    // Write each single tag. Keep track of the size as well.
    for (i=0; i < ElemCount; i++) {

        ElementOffsets[i] = io ->Tell(ContextID, io) - BaseOffset;

        ElementSig = Elem ->Type;

        TypeHandler = FUNC0((cmsTagTypeSignature) ElementSig, MPETypePluginChunk->TagTypes, SupportedMPEtypes);
        if (TypeHandler == NULL)  {

                char String[5];

                FUNC4(String, (cmsTagSignature) ElementSig);

                 // An unknown element was found.
                 FUNC11(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Found unknown MPE type '%s'", String);
                 goto Error;
        }

        if (!FUNC7(ContextID, io, ElementSig)) goto Error;
        if (!FUNC7(ContextID, io, 0)) goto Error;
        Before = io ->Tell(ContextID, io);
        if (!TypeHandler ->WritePtr(ContextID, self, io, Elem, 1)) goto Error;
        if (!FUNC5(ContextID, io)) goto Error;

        ElementSizes[i] = io ->Tell(ContextID, io) - Before;

        Elem = Elem ->Next;
    }

    // Write the directory
    CurrentPos = io ->Tell(ContextID, io);

    if (!io ->Seek(ContextID, io, DirectoryPos)) goto Error;

    for (i=0; i < ElemCount; i++) {
        if (!FUNC7(ContextID, io, ElementOffsets[i])) goto Error;
        if (!FUNC7(ContextID, io, ElementSizes[i])) goto Error;
    }

    if (!io ->Seek(ContextID, io, CurrentPos)) goto Error;

    if (ElementOffsets != NULL) FUNC3(ContextID, ElementOffsets);
    if (ElementSizes != NULL) FUNC3(ContextID, ElementSizes);
    return TRUE;

Error:
    if (ElementOffsets != NULL) FUNC3(ContextID, ElementOffsets);
    if (ElementSizes != NULL) FUNC3(ContextID, ElementSizes);
    return FALSE;

    FUNC12(nItems);
}