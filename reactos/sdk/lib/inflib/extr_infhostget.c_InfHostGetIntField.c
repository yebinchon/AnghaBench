
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PINFCONTEXT ;
typedef int INT ;
typedef int INFSTATUS ;


 scalar_t__ INF_SUCCESS (int ) ;
 int InfpGetIntField (int ,int ,int *) ;
 int errno ;

int
InfHostGetIntField(PINFCONTEXT Context,
                   ULONG FieldIndex,
                   INT *IntegerValue)
{
  INFSTATUS Status;

  Status = InfpGetIntField(Context, FieldIndex, IntegerValue);
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
