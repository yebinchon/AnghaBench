
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int TAGREF ;


 int SDB_DATABASE_MAIN_SHIM ;
 scalar_t__ g_LayerDB ;
 int mbstowcs (int *,char*,int ) ;
 int pSdbGetLayerTagRef (scalar_t__,int *) ;
 scalar_t__ pSdbInitDatabase (int ,int ) ;
 int strlen (char*) ;
 int strncpy (char*,char const*,int) ;

TAGREF find_layer(const char* szLayerStart, const char* szLayerEnd)
{
    char layer[100] = { 0 };
    WCHAR layerW[100] = { 0 };
    strncpy(layer, szLayerStart, szLayerEnd - szLayerStart);

    if (!g_LayerDB)
    {
        g_LayerDB = pSdbInitDatabase(SDB_DATABASE_MAIN_SHIM, 0);
    }

    mbstowcs(layerW, layer, strlen(layer));
    return pSdbGetLayerTagRef(g_LayerDB, layerW);
}
