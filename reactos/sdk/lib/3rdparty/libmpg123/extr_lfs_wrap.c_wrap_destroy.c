
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrap_data {struct wrap_data* indextable; } ;


 int free (struct wrap_data*) ;
 int wrap_io_cleanup (void*) ;

__attribute__((used)) static void wrap_destroy(void *handle)
{
 struct wrap_data *wh = handle;
 wrap_io_cleanup(handle);
 if(wh->indextable != ((void*)0))
 free(wh->indextable);

 free(wh);
}
