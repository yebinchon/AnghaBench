
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int* time_t ;
typedef unsigned int* clock_t ;


 unsigned int* clock () ;
 int memcpy (unsigned int*,unsigned int**,int) ;
 unsigned int sof (unsigned int*) ;
 unsigned int* time (int *) ;

__attribute__((used)) static unsigned int l_randomizePivot (void) {
  clock_t c = clock();
  time_t t = time(((void*)0));
  unsigned int buff[sof(c) + sof(t)];
  unsigned int i, rnd = 0;
  memcpy(buff, &c, sof(c) * sizeof(unsigned int));
  memcpy(buff + sof(c), &t, sof(t) * sizeof(unsigned int));
  for (i = 0; i < sof(buff); i++)
    rnd += buff[i];
  return rnd;
}
