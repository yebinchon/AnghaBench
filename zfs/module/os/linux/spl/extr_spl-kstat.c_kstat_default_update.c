
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kstat_t ;


 int ASSERT (int ) ;
 int EACCES ;
 int KSTAT_WRITE ;

__attribute__((used)) static int
kstat_default_update(kstat_t *ksp, int rw)
{
 ASSERT(ksp != ((void*)0));

 if (rw == KSTAT_WRITE)
  return (EACCES);

 return (0);
}
