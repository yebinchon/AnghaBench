
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWCHAR ;
typedef int PINFCONTEXT ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpGetData (int ,int *,int *) ;

BOOLEAN
InfGetData(PINFCONTEXT Context,
           PWCHAR *Key,
           PWCHAR *Data)
{
  return INF_SUCCESS(InfpGetData(Context, Key, Data));
}
