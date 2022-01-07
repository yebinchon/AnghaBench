
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
struct pool {scalar_t__ n_used; scalar_t__ n_tiles; struct pool* next; } ;
struct mempool {int tile_size; scalar_t__ at_least; struct pool* first_pool; void* freelist; } ;


 size_t ALIGN (int) ;
 size_t MAX (scalar_t__,size_t) ;
 size_t PAGE_ALIGN (size_t) ;
 scalar_t__ _unlikely_ (int) ;
 int assert (int) ;
 struct pool* malloc (size_t) ;

void* mempool_alloc_tile(struct mempool *mp) {
        size_t i;




        assert(mp->tile_size >= sizeof(void*));
        assert(mp->at_least > 0);

        if (mp->freelist) {
                void *r;

                r = mp->freelist;
                mp->freelist = * (void**) mp->freelist;
                return r;
        }

        if (_unlikely_(!mp->first_pool) ||
            _unlikely_(mp->first_pool->n_used >= mp->first_pool->n_tiles)) {
                size_t size, n;
                struct pool *p;

                n = mp->first_pool ? mp->first_pool->n_tiles : 0;
                n = MAX(mp->at_least, n * 2);
                size = PAGE_ALIGN(ALIGN(sizeof(struct pool)) + n*mp->tile_size);
                n = (size - ALIGN(sizeof(struct pool))) / mp->tile_size;

                p = malloc(size);
                if (!p)
                        return ((void*)0);

                p->next = mp->first_pool;
                p->n_tiles = n;
                p->n_used = 0;

                mp->first_pool = p;
        }

        i = mp->first_pool->n_used++;

        return ((uint8_t*) mp->first_pool) + ALIGN(sizeof(struct pool)) + i*mp->tile_size;
}
