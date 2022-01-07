
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct TYPE_8__ {scalar_t__ sec; } ;
struct TYPE_7__ {scalar_t__ sec; } ;
struct cache_entry {int ce_flags; int modifier; int sha1; TYPE_2__ ce_ctime; TYPE_1__ ce_mtime; int ce_mode; int name; } ;
typedef int mode_t ;
typedef int gboolean ;
struct TYPE_9__ {scalar_t__ st_ctime; scalar_t__ st_mtime; int st_mode; } ;
typedef int SeafileCrypt ;
typedef TYPE_3__ SeafStat ;
typedef scalar_t__ (* IndexCB ) (char const*,int,char const*,unsigned char*,int *,int ) ;


 int ABS (scalar_t__) ;
 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_OK_TO_REPLACE ;
 int CE_ADDED ;
 unsigned int CE_MATCH_IGNORE_SKIP_WORKTREE ;
 unsigned int CE_MATCH_IGNORE_VALID ;
 unsigned int CE_MATCH_RACY_IS_DIRTY ;
 int FALSE ;
 int S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int TRUE ;
 scalar_t__ add_index_entry (struct index_state*,struct cache_entry*,int) ;
 int cache_entry_size (int) ;
 struct cache_entry* calloc (int,int) ;
 int ce_namelen (struct cache_entry*) ;
 int ce_stage (struct cache_entry*) ;
 int create_ce_mode (int ) ;
 int fill_stat_cache_info (struct cache_entry*,TYPE_3__*) ;
 int free (struct cache_entry*) ;
 int g_strdup (char const*) ;
 int ie_match_stat (struct cache_entry*,TYPE_3__*,unsigned int) ;
 struct cache_entry* index_name_exists (struct index_state*,int ,int ,int) ;
 scalar_t__ memcmp (int ,unsigned char*,int) ;
 int memcpy (int ,...) ;
 int remove_file_from_index (struct index_state*,int ) ;
 int seaf_warning (char*,char const*) ;
 int strlen (char const*) ;

int add_to_index(const char *repo_id,
                 int version,
                 struct index_state *istate,
                 const char *path,
                 const char *full_path,
                 SeafStat *st,
                 int flags,
                 SeafileCrypt *crypt,
                 IndexCB index_cb,
                 const char *modifier,
                 gboolean *added)
{
    int size, namelen;
    mode_t st_mode = st->st_mode;
    struct cache_entry *ce, *alias;
    unsigned char sha1[20];
    unsigned ce_option = CE_MATCH_IGNORE_VALID|CE_MATCH_IGNORE_SKIP_WORKTREE|CE_MATCH_RACY_IS_DIRTY;
    int add_option = (ADD_CACHE_OK_TO_ADD|ADD_CACHE_OK_TO_REPLACE);

    *added = FALSE;

    if (!S_ISREG(st_mode) && !S_ISLNK(st_mode) && !S_ISDIR(st_mode)) {
        seaf_warning("%s: can only add regular files, symbolic links or git-directories\n", path);
        return -1;
    }

    namelen = strlen(path);




    size = cache_entry_size(namelen);
    ce = calloc(1, size);
    memcpy(ce->name, path, namelen);
    ce->ce_flags = namelen;
    fill_stat_cache_info(ce, st);

    ce->ce_mode = create_ce_mode(st_mode);

    alias = index_name_exists(istate, ce->name, ce_namelen(ce), 0);
    if (alias) {
        if (!ce_stage(alias) && !ie_match_stat(alias, st, ce_option)) {
            free(ce);
            return 0;
        }
    } else {
    }
    if (index_cb (repo_id, version, full_path, sha1, crypt, TRUE) < 0) {
        free (ce);
        return -1;
    }

    memcpy (ce->sha1, sha1, 20);
    ce->ce_flags |= CE_ADDED;
    ce->modifier = g_strdup(modifier);

    if (add_index_entry(istate, ce, add_option)) {
        seaf_warning("unable to add %s to index\n",path);
        return -1;
    }




    *added = TRUE;

    return 0;
}
