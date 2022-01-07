
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PINFCONTEXT ;
typedef int INFSTATUS ;


 scalar_t__ INF_SUCCESS (int ) ;
 int InfpAddLineWithKey (int ,int const*) ;
 int errno ;

int
InfHostAddLine(PINFCONTEXT Context, const WCHAR *Key)
{
  INFSTATUS Status;

  Status = InfpAddLineWithKey(Context, Key);
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
