
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashid {int hashmod; scalar_t__ count; scalar_t__ cap; int * hash; int * id; } ;


 int skynet_free (int *) ;

__attribute__((used)) static void
hashid_clear(struct hashid *hi) {
 skynet_free(hi->id);
 skynet_free(hi->hash);
 hi->id = ((void*)0);
 hi->hash = ((void*)0);
 hi->hashmod = 1;
 hi->cap = 0;
 hi->count = 0;
}
