
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PINFCONTEXT ;
typedef int PCWSTR ;
typedef int BOOLEAN ;


 int INF_SUCCESS (int ) ;
 int InfpAddLineWithKey (int ,int ) ;

BOOLEAN
InfHostAddLine(PINFCONTEXT Context, PCWSTR Key)
{
  return INF_SUCCESS(InfpAddLineWithKey(Context, Key));
}
