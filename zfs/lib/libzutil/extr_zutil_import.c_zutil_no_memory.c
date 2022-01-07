
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libpc_handle_t ;


 int EZFS_NOMEM ;
 int exit (int) ;
 int zutil_error (int *,int ,char*) ;

__attribute__((used)) static int
zutil_no_memory(libpc_handle_t *hdl)
{
 zutil_error(hdl, EZFS_NOMEM, "internal error");
 exit(1);
}
