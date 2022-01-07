
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pool_config_ops_t ;
typedef int nvlist_t ;
struct TYPE_8__ {scalar_t__ lpc_open_access_error; int lpc_printerr; int const* lpc_ops; void* lpc_lib_handle; int member_0; } ;
typedef TYPE_1__ libpc_handle_t ;
struct TYPE_9__ {int guid; int * poolname; int * cachefile; } ;
typedef TYPE_2__ importargs_t ;


 int B_TRUE ;
 int EZFS_EACESS ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 scalar_t__ geteuid () ;
 scalar_t__ nvlist_empty (int *) ;
 int verify (int) ;
 int * zpool_find_import_cached (TYPE_1__*,int *,int *,int ) ;
 int * zpool_find_import_impl (TYPE_1__*,TYPE_2__*) ;
 int zutil_error (TYPE_1__*,int ,int ) ;

nvlist_t *
zpool_search_import(void *hdl, importargs_t *import,
    const pool_config_ops_t *pco)
{
 libpc_handle_t handle = { 0 };
 nvlist_t *pools = ((void*)0);

 handle.lpc_lib_handle = hdl;
 handle.lpc_ops = pco;
 handle.lpc_printerr = B_TRUE;

 verify(import->poolname == ((void*)0) || import->guid == 0);

 if (import->cachefile != ((void*)0))
  pools = zpool_find_import_cached(&handle, import->cachefile,
      import->poolname, import->guid);
 else
  pools = zpool_find_import_impl(&handle, import);

 if ((pools == ((void*)0) || nvlist_empty(pools)) &&
     handle.lpc_open_access_error && geteuid() != 0) {
  (void) zutil_error(&handle, EZFS_EACESS, dgettext(TEXT_DOMAIN,
      "no pools found"));
 }

 return (pools);
}
