
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int FormattersFactory; } ;
typedef TYPE_1__ cmsPluginFormatters ;
typedef int cmsPluginBase ;
struct TYPE_5__ {struct TYPE_5__* Next; int Factory; } ;
typedef TYPE_2__ cmsFormattersFactoryList ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_6__ {TYPE_2__* FactoryList; } ;
typedef TYPE_3__ _cmsFormattersPluginChunkType ;


 int FALSE ;
 int FormattersPlugin ;
 int TRUE ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;
 scalar_t__ _cmsPluginMalloc (int ,int) ;

cmsBool _cmsRegisterFormattersPlugin(cmsContext ContextID, cmsPluginBase* Data)
{
    _cmsFormattersPluginChunkType* ctx = ( _cmsFormattersPluginChunkType*) _cmsContextGetClientChunk(ContextID, FormattersPlugin);
    cmsPluginFormatters* Plugin = (cmsPluginFormatters*) Data;
    cmsFormattersFactoryList* fl ;


    if (Data == ((void*)0)) {

          ctx ->FactoryList = ((void*)0);
          return TRUE;
    }

    fl = (cmsFormattersFactoryList*) _cmsPluginMalloc(ContextID, sizeof(cmsFormattersFactoryList));
    if (fl == ((void*)0)) return FALSE;

    fl ->Factory = Plugin ->FormattersFactory;

    fl ->Next = ctx -> FactoryList;
    ctx ->FactoryList = fl;

    return TRUE;
}
