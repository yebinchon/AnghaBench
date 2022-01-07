
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dev_t ;



__attribute__((used)) static int cmpdev (const void *a, const void *b)
{
    const dev_t *da = a, *db = b;

    if (*da > *db)
        return +1;
    if (*da < *db)
        return -1;
    return 0;
}
