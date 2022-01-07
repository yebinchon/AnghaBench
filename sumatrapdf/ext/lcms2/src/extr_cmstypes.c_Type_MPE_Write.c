
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
typedef size_t cmsUInt16Number ;
typedef int cmsTagTypeSignature ;
struct TYPE_24__ {int (* WritePtr ) (int ,struct _cms_typehandler_struct*,TYPE_4__*,TYPE_2__*,int) ;} ;
typedef TYPE_1__ cmsTagTypeHandler ;
typedef int cmsTagSignature ;
typedef size_t cmsStageSignature ;
struct TYPE_25__ {size_t Type; struct TYPE_25__* Next; } ;
typedef TYPE_2__ cmsStage ;
struct TYPE_26__ {TYPE_2__* Elements; } ;
typedef TYPE_3__ cmsPipeline ;
struct TYPE_27__ {size_t (* Tell ) (int ,TYPE_4__*) ;int (* Seek ) (int ,TYPE_4__*,size_t) ;} ;
typedef TYPE_4__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_28__ {int TagTypes; } ;
typedef TYPE_5__ _cmsTagTypePluginChunkType ;
typedef int _cmsTagBase ;


 int FALSE ;
 TYPE_1__* GetHandler (int ,int ,int ) ;
 int MPEPlugin ;
 int SupportedMPEtypes ;
 int TRUE ;
 scalar_t__ _cmsCalloc (int ,size_t,int) ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 int _cmsFree (int ,size_t*) ;
 int _cmsTagSignature2String (char*,int ) ;
 int _cmsWriteAlignment (int ,TYPE_4__*) ;
 int _cmsWriteUInt16Number (int ,TYPE_4__*,size_t) ;
 int _cmsWriteUInt32Number (int ,TYPE_4__*,size_t) ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 size_t cmsPipelineInputChannels (int ,TYPE_3__*) ;
 size_t cmsPipelineOutputChannels (int ,TYPE_3__*) ;
 size_t cmsPipelineStageCount (int ,TYPE_3__*) ;
 int cmsSignalError (int ,int ,char*,char*) ;
 int cmsUNUSED_PARAMETER (size_t) ;
 size_t stub1 (int ,TYPE_4__*) ;
 size_t stub2 (int ,TYPE_4__*) ;
 size_t stub3 (int ,TYPE_4__*) ;
 size_t stub4 (int ,TYPE_4__*) ;
 int stub5 (int ,struct _cms_typehandler_struct*,TYPE_4__*,TYPE_2__*,int) ;
 size_t stub6 (int ,TYPE_4__*) ;
 size_t stub7 (int ,TYPE_4__*) ;
 int stub8 (int ,TYPE_4__*,size_t) ;
 int stub9 (int ,TYPE_4__*,size_t) ;

__attribute__((used)) static
cmsBool Type_MPE_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number i, BaseOffset, DirectoryPos, CurrentPos;
    cmsUInt32Number inputChan, outputChan;
    cmsUInt32Number ElemCount;
    cmsUInt32Number *ElementOffsets = ((void*)0), *ElementSizes = ((void*)0), Before;
    cmsStageSignature ElementSig;
    cmsPipeline* Lut = (cmsPipeline*) Ptr;
    cmsStage* Elem = Lut ->Elements;
    cmsTagTypeHandler* TypeHandler;
    _cmsTagTypePluginChunkType* MPETypePluginChunk = ( _cmsTagTypePluginChunkType*) _cmsContextGetClientChunk(ContextID, MPEPlugin);

    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);

    inputChan = cmsPipelineInputChannels(ContextID, Lut);
    outputChan = cmsPipelineOutputChannels(ContextID, Lut);
    ElemCount = cmsPipelineStageCount(ContextID, Lut);

    ElementOffsets = (cmsUInt32Number *) _cmsCalloc(ContextID, ElemCount, sizeof(cmsUInt32Number));
    if (ElementOffsets == ((void*)0)) goto Error;

    ElementSizes = (cmsUInt32Number *) _cmsCalloc(ContextID, ElemCount, sizeof(cmsUInt32Number));
    if (ElementSizes == ((void*)0)) goto Error;


    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) inputChan)) goto Error;
    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) outputChan)) goto Error;
    if (!_cmsWriteUInt32Number(ContextID, io, (cmsUInt16Number) ElemCount)) goto Error;

    DirectoryPos = io ->Tell(ContextID, io);


    for (i=0; i < ElemCount; i++) {
        if (!_cmsWriteUInt32Number(ContextID, io, 0)) goto Error;
        if (!_cmsWriteUInt32Number(ContextID, io, 0)) goto Error;
    }


    for (i=0; i < ElemCount; i++) {

        ElementOffsets[i] = io ->Tell(ContextID, io) - BaseOffset;

        ElementSig = Elem ->Type;

        TypeHandler = GetHandler((cmsTagTypeSignature) ElementSig, MPETypePluginChunk->TagTypes, SupportedMPEtypes);
        if (TypeHandler == ((void*)0)) {

                char String[5];

                _cmsTagSignature2String(String, (cmsTagSignature) ElementSig);


                 cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Found unknown MPE type '%s'", String);
                 goto Error;
        }

        if (!_cmsWriteUInt32Number(ContextID, io, ElementSig)) goto Error;
        if (!_cmsWriteUInt32Number(ContextID, io, 0)) goto Error;
        Before = io ->Tell(ContextID, io);
        if (!TypeHandler ->WritePtr(ContextID, self, io, Elem, 1)) goto Error;
        if (!_cmsWriteAlignment(ContextID, io)) goto Error;

        ElementSizes[i] = io ->Tell(ContextID, io) - Before;

        Elem = Elem ->Next;
    }


    CurrentPos = io ->Tell(ContextID, io);

    if (!io ->Seek(ContextID, io, DirectoryPos)) goto Error;

    for (i=0; i < ElemCount; i++) {
        if (!_cmsWriteUInt32Number(ContextID, io, ElementOffsets[i])) goto Error;
        if (!_cmsWriteUInt32Number(ContextID, io, ElementSizes[i])) goto Error;
    }

    if (!io ->Seek(ContextID, io, CurrentPos)) goto Error;

    if (ElementOffsets != ((void*)0)) _cmsFree(ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(ContextID, ElementSizes);
    return TRUE;

Error:
    if (ElementOffsets != ((void*)0)) _cmsFree(ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(ContextID, ElementSizes);
    return FALSE;

    cmsUNUSED_PARAMETER(nItems);
}
