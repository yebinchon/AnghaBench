
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrap_data {scalar_t__ iotype; int my_fd; int * handle; int (* h_cleanup ) (int *) ;} ;


 scalar_t__ IO_HANDLE ;
 int close (int) ;
 int stub1 (int *) ;

__attribute__((used)) static void wrap_io_cleanup(void *handle)
{
 struct wrap_data *ioh = handle;
 if(ioh->iotype == IO_HANDLE)
 {
  if(ioh->h_cleanup != ((void*)0) && ioh->handle != ((void*)0))
  ioh->h_cleanup(ioh->handle);

  ioh->handle = ((void*)0);
 }
 if(ioh->my_fd >= 0)
 {
  close(ioh->my_fd);
  ioh->my_fd = -1;
 }
}
