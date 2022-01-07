
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_async ;

__attribute__((used)) static void *async_func(void *arg) {
        test_async = 1;

        return ((void*)0);
}
