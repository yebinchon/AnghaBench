
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int test ;
struct TYPE_4__ {int mut; } ;
typedef TYPE_1__ abruptEndCanary_t ;


 int ASSERT_FALSE (int ) ;
 int ZSTD_pthread_mutex_destroy (int *) ;
 int ZSTD_pthread_mutex_init (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int testAbruptEnding_internal (TYPE_1__) ;

__attribute__((used)) static int testAbruptEnding(void) {
    int result;
    abruptEndCanary_t test;

    memset(&test, 0, sizeof(test));
    ASSERT_FALSE( ZSTD_pthread_mutex_init(&test.mut, ((void*)0)) );

    result = testAbruptEnding_internal(test);

    ZSTD_pthread_mutex_destroy(&test.mut);
    return result;
}
