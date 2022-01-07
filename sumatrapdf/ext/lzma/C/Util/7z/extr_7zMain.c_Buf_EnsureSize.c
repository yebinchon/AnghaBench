
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; } ;
typedef TYPE_1__ CBuf ;


 int Buf_Create (TYPE_1__*,size_t,int *) ;
 int Buf_Free (TYPE_1__*,int *) ;
 int g_Alloc ;

__attribute__((used)) static int Buf_EnsureSize(CBuf *dest, size_t size)
{
  if (dest->size >= size)
    return 1;
  Buf_Free(dest, &g_Alloc);
  return Buf_Create(dest, size, &g_Alloc);
}
