
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int (* TraverseFSTreeCallback ) (int *,char const*,int,char const*,int ,void*,int *) ;
typedef int SeafFSManager ;


 int EMPTY_SHA1 ;
 int FALSE ;
 int SEAF_METADATA_TYPE_FILE ;
 scalar_t__ memcmp (char const*,int ,int) ;

__attribute__((used)) static int
traverse_file (SeafFSManager *mgr,
               const char *repo_id,
               int version,
               const char *id,
               TraverseFSTreeCallback callback,
               void *user_data,
               gboolean skip_errors)
{
    gboolean stop = FALSE;

    if (memcmp (id, EMPTY_SHA1, 40) == 0)
        return 0;

    if (!callback (mgr, repo_id, version, id, SEAF_METADATA_TYPE_FILE, user_data, &stop) &&
        !skip_errors)
        return -1;

    return 0;
}
