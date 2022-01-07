
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPVOID ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int **) ;
 int globalMgr ;

HRESULT BackgroundCopyManagerConstructor(LPVOID *ppObj)
{
    TRACE("(%p)\n", ppObj);
    *ppObj = &globalMgr;
    return S_OK;
}
