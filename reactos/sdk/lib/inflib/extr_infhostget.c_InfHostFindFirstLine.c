
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PINFCONTEXT ;
typedef int INFSTATUS ;
typedef int HINF ;


 scalar_t__ INF_SUCCESS (int ) ;
 int InfpFindFirstLine (int ,int const*,int const*,int *) ;
 int errno ;

int
InfHostFindFirstLine(HINF InfHandle,
                     const WCHAR *Section,
                     const WCHAR *Key,
                     PINFCONTEXT *Context)
{
  INFSTATUS Status;

  Status = InfpFindFirstLine(InfHandle, Section, Key, Context);
  if (INF_SUCCESS(Status))
    {
      return 0;
    }
  else
    {
      errno = Status;
      return -1;
    }
}
