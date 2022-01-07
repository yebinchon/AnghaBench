
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OLECHAR ;
typedef scalar_t__ LONG ;


 scalar_t__ lstrlenW (scalar_t__ const*) ;
 scalar_t__ towupper (int ) ;

__attribute__((used)) static LONG entryNameCmp(
    const OLECHAR *name1,
    const OLECHAR *name2)
{
  LONG diff = lstrlenW(name1) - lstrlenW(name2);

  while (diff == 0 && *name1 != 0)
  {



    diff = towupper(*name1++) - towupper(*name2++);
  }

  return diff;
}
