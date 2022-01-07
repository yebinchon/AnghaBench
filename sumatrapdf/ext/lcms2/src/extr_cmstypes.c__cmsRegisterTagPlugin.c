
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Descriptor; int Signature; } ;
typedef TYPE_1__ cmsPluginTag ;
typedef int cmsPluginBase ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {TYPE_3__* Tag; } ;
typedef TYPE_2__ _cmsTagPluginChunkType ;
struct TYPE_6__ {struct TYPE_6__* Next; int Descriptor; int Signature; } ;
typedef TYPE_3__ _cmsTagLinkedList ;


 int FALSE ;
 int TRUE ;
 int TagPlugin ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 scalar_t__ _cmsPluginMalloc (int ,int) ;

cmsBool _cmsRegisterTagPlugin(cmsContext ContextID, cmsPluginBase* Data)
{
    cmsPluginTag* Plugin = (cmsPluginTag*) Data;
    _cmsTagLinkedList *pt;
    _cmsTagPluginChunkType* TagPluginChunk = ( _cmsTagPluginChunkType*) _cmsContextGetClientChunk(ContextID, TagPlugin);

    if (Data == ((void*)0)) {

        TagPluginChunk->Tag = ((void*)0);
        return TRUE;
    }

    pt = (_cmsTagLinkedList*) _cmsPluginMalloc(ContextID, sizeof(_cmsTagLinkedList));
    if (pt == ((void*)0)) return FALSE;

    pt ->Signature = Plugin ->Signature;
    pt ->Descriptor = Plugin ->Descriptor;
    pt ->Next = TagPluginChunk ->Tag;

    TagPluginChunk ->Tag = pt;

    return TRUE;
}
