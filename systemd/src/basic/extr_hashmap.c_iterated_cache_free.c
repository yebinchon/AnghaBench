
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int ptr; } ;
struct TYPE_8__ {int ptr; } ;
struct TYPE_10__ {TYPE_2__ values; TYPE_1__ keys; } ;
typedef TYPE_3__ IteratedCache ;


 int free (int ) ;
 TYPE_3__* mfree (TYPE_3__*) ;

IteratedCache *iterated_cache_free(IteratedCache *cache) {
        if (cache) {
                free(cache->keys.ptr);
                free(cache->values.ptr);
        }

        return mfree(cache);
}
