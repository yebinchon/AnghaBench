
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 void* CoTaskMemAlloc (int ) ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static inline void* SAFEARRAY_Malloc(ULONG size)
{
  void *ret = CoTaskMemAlloc(size);
  if (ret)
    memset(ret, 0, size);
  return ret;
}
