
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_3__ {int * language; int id; } ;
typedef TYPE_1__ CatalogItem ;


 int siphash24_compress (int *,int,struct siphash*) ;
 int strlen (int *) ;

__attribute__((used)) static void catalog_hash_func(const CatalogItem *i, struct siphash *state) {
        siphash24_compress(&i->id, sizeof(i->id), state);
        siphash24_compress(i->language, strlen(i->language), state);
}
