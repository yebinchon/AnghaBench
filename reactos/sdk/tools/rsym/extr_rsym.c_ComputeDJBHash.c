
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
ComputeDJBHash(const char *name)
{
    unsigned int val = 5381;
    int i = 0;

    for (i = 0; name[i]; i++)
    {
        val = (33 * val) + name[i];
    }

    return val;
}
