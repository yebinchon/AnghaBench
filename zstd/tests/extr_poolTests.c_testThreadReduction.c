
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int test ;
struct TYPE_4__ {int cond; int mut; } ;
typedef TYPE_1__ poolTest_t ;
typedef int POOL_ctx ;


 int ASSERT_FALSE (int ) ;
 int ASSERT_TRUE (int * const) ;
 int * POOL_create (int,int) ;
 int POOL_free (int * const) ;
 int ZSTD_pthread_cond_destroy (int *) ;
 int ZSTD_pthread_cond_init (int *,int *) ;
 int ZSTD_pthread_mutex_destroy (int *) ;
 int ZSTD_pthread_mutex_init (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int testThreadReduction_internal (int * const,TYPE_1__) ;

__attribute__((used)) static int testThreadReduction(void) {
    int result;
    poolTest_t test;
    POOL_ctx* const ctx = POOL_create(4 , 2 );

    ASSERT_TRUE(ctx);

    memset(&test, 0, sizeof(test));
    ASSERT_FALSE( ZSTD_pthread_mutex_init(&test.mut, ((void*)0)) );
    ASSERT_FALSE( ZSTD_pthread_cond_init(&test.cond, ((void*)0)) );

    result = testThreadReduction_internal(ctx, test);

    ZSTD_pthread_mutex_destroy(&test.mut);
    ZSTD_pthread_cond_destroy(&test.cond);
    POOL_free(ctx);

    return result;
}
