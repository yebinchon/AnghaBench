
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Handler; } ;
typedef TYPE_1__ cmsPluginTagType ;
typedef int cmsPluginBase ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {TYPE_3__* TagTypes; } ;
typedef TYPE_2__ _cmsTagTypePluginChunkType ;
struct TYPE_6__ {struct TYPE_6__* Next; int Handler; } ;
typedef TYPE_3__ _cmsTagTypeLinkedList ;
typedef int _cmsMemoryClient ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 scalar_t__ _cmsPluginMalloc (int ,int) ;

__attribute__((used)) static
cmsBool RegisterTypesPlugin(cmsContext ContextID, cmsPluginBase* Data, _cmsMemoryClient pos)
{
    cmsPluginTagType* Plugin = (cmsPluginTagType*) Data;
    _cmsTagTypePluginChunkType* ctx = ( _cmsTagTypePluginChunkType*) _cmsContextGetClientChunk(ContextID, pos);
    _cmsTagTypeLinkedList *pt;


    if (Data == ((void*)0)) {


        ctx ->TagTypes = ((void*)0);
        return TRUE;
    }


    pt = (_cmsTagTypeLinkedList*) _cmsPluginMalloc(ContextID, sizeof(_cmsTagTypeLinkedList));
    if (pt == ((void*)0)) return FALSE;

    pt ->Handler = Plugin ->Handler;
    pt ->Next = ctx ->TagTypes;

    ctx ->TagTypes = pt;

    return TRUE;
}
