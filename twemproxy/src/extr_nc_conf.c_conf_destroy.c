
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int pool; int arg; } ;


 int array_deinit (int *) ;
 scalar_t__ array_n (int *) ;
 int array_pop (int *) ;
 int conf_pool_deinit (int ) ;
 int conf_pop_scalar (struct conf*) ;
 int nc_free (struct conf*) ;

void
conf_destroy(struct conf *cf)
{
    while (array_n(&cf->arg) != 0) {
        conf_pop_scalar(cf);
    }
    array_deinit(&cf->arg);

    while (array_n(&cf->pool) != 0) {
        conf_pool_deinit(array_pop(&cf->pool));
    }
    array_deinit(&cf->pool);

    nc_free(cf);
}
