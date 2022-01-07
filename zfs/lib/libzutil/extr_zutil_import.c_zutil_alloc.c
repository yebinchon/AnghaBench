
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libpc_handle_t ;


 void* calloc (int,size_t) ;
 int zutil_no_memory (int *) ;

void *
zutil_alloc(libpc_handle_t *hdl, size_t size)
{
 void *data;

 if ((data = calloc(1, size)) == ((void*)0))
  (void) zutil_no_memory(hdl);

 return (data);
}
