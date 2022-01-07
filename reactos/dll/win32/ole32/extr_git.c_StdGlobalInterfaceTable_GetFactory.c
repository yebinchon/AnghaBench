
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPVOID ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*) ;
 int git_classfactory ;

HRESULT StdGlobalInterfaceTable_GetFactory(LPVOID *ppv)
{
  *ppv = &git_classfactory;
  TRACE("Returning GIT classfactory\n");
  return S_OK;
}
