
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PINFCONTEXT ;
typedef int INFSTATUS ;


 scalar_t__ INF_SUCCESS (int ) ;
 int InfpGetData (int ,int **,int **) ;
 int errno ;

int
InfHostGetData(PINFCONTEXT Context,
               WCHAR **Key,
               WCHAR **Data)
{
  INFSTATUS Status;

  Status = InfpGetData(Context, Key, Data);
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
