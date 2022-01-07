
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PINFCONTEXT ;
typedef int INFSTATUS ;


 scalar_t__ INF_SUCCESS (int ) ;
 int InfpFindNextLine (int ,int ) ;
 int errno ;

int
InfHostFindNextLine(PINFCONTEXT ContextIn,
                    PINFCONTEXT ContextOut)
{
  INFSTATUS Status;

  Status = InfpFindNextLine(ContextIn, ContextOut);
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
