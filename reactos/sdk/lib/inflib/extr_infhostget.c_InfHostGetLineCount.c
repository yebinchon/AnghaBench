
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int LONG ;
typedef int HINF ;


 int InfpGetLineCount (int ,int ) ;

LONG
InfHostGetLineCount(HINF InfHandle,
                    PCWSTR Section)
{
  return InfpGetLineCount(InfHandle, Section);
}
