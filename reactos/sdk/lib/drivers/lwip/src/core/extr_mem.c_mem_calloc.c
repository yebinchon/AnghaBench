
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mem_size_t ;


 void* mem_malloc (int) ;
 int memset (void*,int ,int) ;

void *mem_calloc(mem_size_t count, mem_size_t size)
{
  void *p;


  p = mem_malloc(count * size);
  if (p) {

    memset(p, 0, count * size);
  }
  return p;
}
