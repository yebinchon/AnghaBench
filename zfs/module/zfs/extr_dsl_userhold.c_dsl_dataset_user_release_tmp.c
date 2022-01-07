
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsl_pool {int dummy; } ;
typedef int nvlist_t ;


 int ASSERT (int ) ;
 int dsl_dataset_user_release_impl (int *,int *,struct dsl_pool*) ;

void
dsl_dataset_user_release_tmp(struct dsl_pool *dp, nvlist_t *holds)
{
 ASSERT(dp != ((void*)0));
 (void) dsl_dataset_user_release_impl(holds, ((void*)0), dp);
}
