
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int PtrToUlong (void*) ;

__attribute__((used)) static DWORD get_ptr_hash(void *ptr)
{
    return PtrToUlong(ptr) % 1201;
}
