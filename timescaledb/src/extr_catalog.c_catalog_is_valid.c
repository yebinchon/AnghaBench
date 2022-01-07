
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ initialized; } ;
typedef TYPE_1__ Catalog ;



__attribute__((used)) static bool
catalog_is_valid(Catalog *catalog)
{
 return catalog != ((void*)0) && catalog->initialized;
}
