
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PCTXTYPE ;


 int midl_user_free (int*) ;
 int printf (char*,int) ;

void CtxClose(PCTXTYPE *pphContext )
{
 printf("CtxClose(): %d\n", **pphContext);
 midl_user_free(*pphContext);
 *pphContext = ((void*)0);
}
