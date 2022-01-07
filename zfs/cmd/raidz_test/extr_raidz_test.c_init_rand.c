
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* rand_data ;

__attribute__((used)) static int
init_rand(void *data, size_t size, void *private)
{
 int i;
 int *dst = (int *)data;

 for (i = 0; i < size / sizeof (int); i++)
  dst[i] = rand_data[i];

 return (0);
}
