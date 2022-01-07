
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CoTaskMemFree (void*) ;

__attribute__((used)) static inline void SAFEARRAY_Free(void *ptr)
{
  CoTaskMemFree(ptr);
}
