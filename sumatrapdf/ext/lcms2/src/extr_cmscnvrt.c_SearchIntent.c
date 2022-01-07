
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ cmsUInt32Number ;
struct TYPE_5__ {scalar_t__ Intent; struct TYPE_5__* Next; } ;
typedef TYPE_1__ cmsIntentsList ;
typedef int cmsContext ;
struct TYPE_6__ {TYPE_1__* Intents; } ;
typedef TYPE_2__ _cmsIntentsPluginChunkType ;


 TYPE_1__* DefaultIntents ;
 int IntentPlugin ;
 scalar_t__ _cmsContextGetClientChunk (int ,int ) ;

__attribute__((used)) static
cmsIntentsList* SearchIntent(cmsContext ContextID, cmsUInt32Number Intent)
{
    _cmsIntentsPluginChunkType* ctx = ( _cmsIntentsPluginChunkType*) _cmsContextGetClientChunk(ContextID, IntentPlugin);
    cmsIntentsList* pt;

    for (pt = ctx -> Intents; pt != ((void*)0); pt = pt -> Next)
        if (pt ->Intent == Intent) return pt;

    for (pt = DefaultIntents; pt != ((void*)0); pt = pt -> Next)
        if (pt ->Intent == Intent) return pt;

    return ((void*)0);
}
