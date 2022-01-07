
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int lev_sort ( const void *p1, const void *p2, void *arg )
{
    const int *a = p1;
    const int *b = p2;
    int *distances = arg;

    return distances[*a] - distances[*b];
}
