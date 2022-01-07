
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POOL_ctx ;


 int assert (int) ;
 int g_ctx ;

void POOL_free(POOL_ctx* ctx) {
    assert(!ctx || ctx == &g_ctx);
    (void)ctx;
}
