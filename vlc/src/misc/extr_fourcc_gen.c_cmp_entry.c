
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int fourcc; int alias; } ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int cmp_entry(const void *a, const void *b)
{
    const struct entry *ea = a, *eb = b;
    int d = memcmp(ea->alias, eb->alias, 4);
    if (d == 0)
        d = memcmp(ea->fourcc, eb->fourcc, 4);
    return d;
}
