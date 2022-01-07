
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint64 ;


 char* gen_conflict_path (char const*,char*,int ) ;
 scalar_t__ get_file_modifier_mtime (char const*,char const*,int,char const*,char const*,char**,int *) ;

char *
gen_conflict_path_wrapper (const char *repo_id, int version,
                           const char *head, const char *in_repo_path,
                           const char *original_path)
{
    char *modifier;
    gint64 mtime;





    if (get_file_modifier_mtime (repo_id, repo_id, version, head, in_repo_path,
                                 &modifier, &mtime) < 0)
        return ((void*)0);

    return gen_conflict_path (original_path, modifier, mtime);
}
