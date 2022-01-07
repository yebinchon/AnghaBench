
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int check_align(size_t align)
{
    if (align & (align - 1))
        return EINVAL;
    if (align < sizeof (void *))
        return EINVAL;
    return 0;
}
