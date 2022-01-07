
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint64 ;


 int get_file_modifier_mtime_v0 (char const*,char const*,int,char const*,char const*,char**,int *) ;
 int get_file_modifier_mtime_v1 (char const*,char const*,int,char const*,char const*,char**,int *) ;

int
get_file_modifier_mtime (const char *repo_id,
                         const char *store_id,
                         int version,
                         const char *head,
                         const char *path,
                         char **modifier,
                         gint64 *mtime)
{
    if (version > 0)
        return get_file_modifier_mtime_v1 (repo_id, store_id, version,
                                           head, path,
                                           modifier, mtime);
    else
        return get_file_modifier_mtime_v0 (repo_id, store_id, version,
                                           head, path,
                                           modifier, mtime);
}
