
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PCWSTR ;
typedef int PCSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int MAX_LAYER_LENGTH ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int pSetPermLayerState (int ,int *,int ,int ,int ) ;

__attribute__((used)) static BOOL wrapSetPermLayerState(PCWSTR wszPath, PCSTR szLayer, DWORD dwFlags, BOOL bMachine, BOOL bEnable)
{
    WCHAR wszLayer[MAX_LAYER_LENGTH];
    MultiByteToWideChar(CP_ACP, 0, szLayer, -1, wszLayer, MAX_LAYER_LENGTH);
    return pSetPermLayerState(wszPath, wszLayer, dwFlags, bMachine, bEnable);
}
