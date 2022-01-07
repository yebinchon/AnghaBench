
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PINFCONTEXT ;
typedef int INFSTATUS ;


 scalar_t__ INF_SUCCESS (int ) ;
 int InfpFindNextMatchLine (int ,int const*,int ) ;
 int errno ;

int
InfHostFindNextMatchLine(PINFCONTEXT ContextIn,
                         const WCHAR *Key,
                         PINFCONTEXT ContextOut)
{
  INFSTATUS Status;

  Status = InfpFindNextMatchLine(ContextIn, Key, ContextOut);
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
