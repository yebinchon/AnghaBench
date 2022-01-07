
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int intcompare( const void *pa, const void *pb )
{
    return *(int*)pa - *(int*)pb;
}
