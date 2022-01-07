
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,int) ;

void *sqliterkOSMalloc(size_t size)
{
    return calloc(size, sizeof(char));
}
