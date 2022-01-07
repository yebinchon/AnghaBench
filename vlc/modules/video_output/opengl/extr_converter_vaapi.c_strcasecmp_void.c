
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (void const*,void const*) ;

__attribute__((used)) static int strcasecmp_void(const void *a, const void *b)
{
    return strcasecmp(a, b);
}
