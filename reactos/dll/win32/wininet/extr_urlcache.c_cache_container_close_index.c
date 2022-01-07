
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mapping; } ;
typedef TYPE_1__ cache_container ;


 int CloseHandle (int *) ;

__attribute__((used)) static void cache_container_close_index(cache_container *pContainer)
{
    CloseHandle(pContainer->mapping);
    pContainer->mapping = ((void*)0);
}
