
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long* PCTXTYPE ;
typedef int CTXTYPE ;


 scalar_t__ midl_user_allocate (int) ;
 int printf (char*,long) ;

void CtxOpen( PCTXTYPE *pphContext,
  long Value)
{
 printf("CtxOpen(): Value=%d\n",Value);
 *pphContext = (PCTXTYPE)midl_user_allocate( sizeof(CTXTYPE) );
 **pphContext = Value;
}
