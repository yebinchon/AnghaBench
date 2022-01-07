
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * bytes; } ;
struct TYPE_6__ {int language; TYPE_1__ id; } ;
typedef TYPE_2__ CatalogItem ;


 int CMP (int ,int ) ;
 unsigned int ELEMENTSOF (int *) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int catalog_compare_func(const CatalogItem *a, const CatalogItem *b) {
        unsigned k;
        int r;

        for (k = 0; k < ELEMENTSOF(b->id.bytes); k++) {
                r = CMP(a->id.bytes[k], b->id.bytes[k]);
                if (r != 0)
                        return r;
        }

        return strcmp(a->language, b->language);
}
