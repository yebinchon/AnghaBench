
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t DEFAULT_IMPORT_PATH_SIZE ;
 scalar_t__ zpool_default_import_path ;

const char * const *
zpool_default_search_paths(size_t *count)
{
 *count = DEFAULT_IMPORT_PATH_SIZE;
 return ((const char * const *)zpool_default_import_path);
}
