
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PINFCONTEXT ;
typedef int PINFCACHE ;
typedef int INFSTATUS ;
typedef scalar_t__ HINF ;


 scalar_t__ INF_SUCCESS (int ) ;
 int InfpFindOrAddSection (int ,int const*,int *) ;
 int errno ;

int
InfHostFindOrAddSection(HINF InfHandle,
                        const WCHAR *Section,
                        PINFCONTEXT *Context)
{
  INFSTATUS Status;

  Status = InfpFindOrAddSection((PINFCACHE) InfHandle, Section, Context);
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
