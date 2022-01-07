
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int assert (int ) ;
 int fz_free (int *,void*) ;
 int * get_hb_context () ;

void fz_hb_free(void *ptr)
{
 fz_context *ctx = get_hb_context();

 assert(ctx != ((void*)0));

 fz_free(ctx, ptr);
}
