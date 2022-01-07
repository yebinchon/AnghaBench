
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ cmsTagSignature ;
typedef int cmsTagDescriptor ;
typedef int cmsContext ;
struct TYPE_4__ {TYPE_2__* Tag; } ;
typedef TYPE_1__ _cmsTagPluginChunkType ;
struct TYPE_5__ {scalar_t__ Signature; int Descriptor; struct TYPE_5__* Next; } ;
typedef TYPE_2__ _cmsTagLinkedList ;


 TYPE_2__* SupportedTags ;
 int TagPlugin ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;

cmsTagDescriptor* _cmsGetTagDescriptor(cmsContext ContextID, cmsTagSignature sig)
{
    _cmsTagLinkedList* pt;
    _cmsTagPluginChunkType* TagPluginChunk = ( _cmsTagPluginChunkType*) _cmsContextGetClientChunk(ContextID, TagPlugin);

    for (pt = TagPluginChunk->Tag;
             pt != ((void*)0);
             pt = pt ->Next) {

                if (sig == pt -> Signature) return &pt ->Descriptor;
    }

    for (pt = SupportedTags;
            pt != ((void*)0);
            pt = pt ->Next) {

                if (sig == pt -> Signature) return &pt ->Descriptor;
    }

    return ((void*)0);
}
