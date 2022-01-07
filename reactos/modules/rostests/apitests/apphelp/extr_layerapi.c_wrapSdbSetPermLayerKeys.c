
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PCWSTR ;
typedef int PCSTR ;
typedef int BOOL ;


 int CP_ACP ;
 int MAX_LAYER_LENGTH ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int pSdbSetPermLayerKeys (int ,int *,int ) ;

__attribute__((used)) static BOOL wrapSdbSetPermLayerKeys(PCWSTR wszPath, PCSTR szLayers, BOOL bMachine)
{
    WCHAR wszLayers[MAX_LAYER_LENGTH];
    MultiByteToWideChar(CP_ACP, 0, szLayers, -1, wszLayers, MAX_LAYER_LENGTH);
    return pSdbSetPermLayerKeys(wszPath, wszLayers, bMachine);
}
