
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (void const* const,void const* const,size_t) ;

__attribute__((used)) static int deref_cmp(const void *s1, const void *s2, size_t num)
{
    return memcmp(*(const void *const *)s1, *(const void *const *)s2, num);
}
