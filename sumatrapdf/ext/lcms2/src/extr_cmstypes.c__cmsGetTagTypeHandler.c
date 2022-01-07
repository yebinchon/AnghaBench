
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsTagTypeSignature ;
typedef int cmsTagTypeHandler ;
typedef int cmsContext ;
struct TYPE_2__ {int TagTypes; } ;
typedef TYPE_1__ _cmsTagTypePluginChunkType ;
typedef int _cmsTagTypeLinkedList ;


 int * GetHandler (int ,int ,int *) ;
 scalar_t__ SupportedTagTypes ;
 int TagTypePlugin ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;

cmsTagTypeHandler* _cmsGetTagTypeHandler(cmsContext ContextID, cmsTagTypeSignature sig)
{
    _cmsTagTypePluginChunkType* ctx = ( _cmsTagTypePluginChunkType*) _cmsContextGetClientChunk(ContextID, TagTypePlugin);

    return GetHandler(sig, ctx->TagTypes, (_cmsTagTypeLinkedList*) SupportedTagTypes);
}
