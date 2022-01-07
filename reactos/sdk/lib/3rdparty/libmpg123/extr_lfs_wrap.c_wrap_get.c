
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wrap_data {int fd; int my_fd; int * h_cleanup; int * r_h_lseek; int * r_h_read; int * handle; int * r_lseek; int * r_read; scalar_t__ iotype; int * indextable; } ;
struct TYPE_3__ {struct wrap_data* wrapperdata; int wrapperclean; int err; } ;
typedef TYPE_1__ mpg123_handle ;


 int MPG123_OUT_OF_MEM ;
 struct wrap_data* malloc (int) ;
 int wrap_destroy ;

__attribute__((used)) static struct wrap_data* wrap_get(mpg123_handle *mh)
{
 struct wrap_data* whd;
 if(mh == ((void*)0)) return ((void*)0);



 if(mh->wrapperdata == ((void*)0))
 {

  mh->wrapperdata = malloc(sizeof(struct wrap_data));
  if(mh->wrapperdata == ((void*)0))
  {
   mh->err = MPG123_OUT_OF_MEM;
   return ((void*)0);
  }

  mh->wrapperclean = wrap_destroy;

  whd = mh->wrapperdata;
  whd->indextable = ((void*)0);
  whd->iotype = 0;
  whd->fd = -1;
  whd->my_fd = -1;
  whd->r_read = ((void*)0);
  whd->r_lseek = ((void*)0);
  whd->handle = ((void*)0);
  whd->r_h_read = ((void*)0);
  whd->r_h_lseek = ((void*)0);
  whd->h_cleanup = ((void*)0);
 }
 else whd = mh->wrapperdata;

 return whd;
}
