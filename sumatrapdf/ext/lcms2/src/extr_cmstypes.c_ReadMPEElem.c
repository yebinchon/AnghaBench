
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsTagTypeSignature ;
struct TYPE_4__ {scalar_t__ (* ReadPtr ) (int ,struct _cms_typehandler_struct*,int *,int *,int ) ;} ;
typedef TYPE_1__ cmsTagTypeHandler ;
typedef int cmsTagSignature ;
typedef scalar_t__ cmsStageSignature ;
typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {int TagTypes; } ;
typedef TYPE_2__ _cmsTagTypePluginChunkType ;


 int FALSE ;
 TYPE_1__* GetHandler (int ,int ,int ) ;
 int MPEPlugin ;
 int SupportedMPEtypes ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 int _cmsReadUInt32Number (int ,int *,int *) ;
 int _cmsTagSignature2String (char*,int ) ;
 int cmsAT_END ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 int cmsSignalError (int ,int ,char*,char*) ;
 int cmsUNUSED_PARAMETER (int ) ;
 scalar_t__ stub1 (int ,struct _cms_typehandler_struct*,int *,int *,int ) ;

__attribute__((used)) static
cmsBool ReadMPEElem(cmsContext ContextID, struct _cms_typehandler_struct* self,
                    cmsIOHANDLER* io,
                    void* Cargo,
                    cmsUInt32Number n,
                    cmsUInt32Number SizeOfTag)
{
    cmsStageSignature ElementSig;
    cmsTagTypeHandler* TypeHandler;
    cmsUInt32Number nItems;
    cmsPipeline *NewLUT = (cmsPipeline *) Cargo;
    _cmsTagTypePluginChunkType* MPETypePluginChunk = ( _cmsTagTypePluginChunkType*) _cmsContextGetClientChunk(ContextID, MPEPlugin);



    if (!_cmsReadUInt32Number(ContextID, io, (cmsUInt32Number*) &ElementSig)) return FALSE;


    if (!_cmsReadUInt32Number(ContextID, io, ((void*)0))) return FALSE;


    TypeHandler = GetHandler((cmsTagTypeSignature) ElementSig, MPETypePluginChunk ->TagTypes, SupportedMPEtypes);
    if (TypeHandler == ((void*)0)) {

        char String[5];

        _cmsTagSignature2String(String, (cmsTagSignature) ElementSig);


        cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unknown MPE type '%s' found.", String);
        return FALSE;
    }



    if (TypeHandler ->ReadPtr != ((void*)0)) {


        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_END, (cmsStage*) TypeHandler ->ReadPtr(ContextID, self, io, &nItems, SizeOfTag)))
            return FALSE;
    }

    return TRUE;

    cmsUNUSED_PARAMETER(SizeOfTag);
    cmsUNUSED_PARAMETER(n);
}
