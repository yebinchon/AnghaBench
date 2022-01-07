
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;


 int KM_NOSLEEP ;
 int KM_PUSHPAGE ;
 int KM_SLEEP ;
 int TQ_NOSLEEP ;
 int TQ_PUSHPAGE ;

__attribute__((used)) static int
task_km_flags(uint_t flags)
{
 if (flags & TQ_NOSLEEP)
  return (KM_NOSLEEP);

 if (flags & TQ_PUSHPAGE)
  return (KM_PUSHPAGE);

 return (KM_SLEEP);
}
