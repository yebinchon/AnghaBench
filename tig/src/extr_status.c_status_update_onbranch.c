
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct ref {char const* name; } ;
struct io {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {char* head; char* head_id; scalar_t__* remote; int git_dir; } ;


 int ARRAY_SIZE (char const***) ;
 int SIZEOF_STR ;
 int STRING_SIZE (char*) ;
 struct ref* get_canonical_ref (char*) ;
 scalar_t__ io_open (struct io*,char*,int ,char const*) ;
 scalar_t__ io_read_buf (struct io*,char*,int,int) ;
 scalar_t__ is_initial_commit () ;
 scalar_t__ lstat (char*,struct stat*) ;
 int prefixcmp (char const*,char*) ;
 TYPE_1__ repo ;
 scalar_t__ status_branch_tracking_info (char*,int,char const*,scalar_t__*) ;
 int status_onbranch ;
 scalar_t__ strcmp (char const*,char*) ;
 int string_copy (int ,char*) ;
 int string_format (char*,char const*,char const*,char const*,...) ;

__attribute__((used)) static void
status_update_onbranch(void)
{
 static const char *paths[][3] = {
  { "rebase-apply/rebasing", "rebase-apply/head-name", "Rebasing" },
  { "rebase-apply/applying", "rebase-apply/head-name", "Applying mailbox to" },
  { "rebase-apply/", "rebase-apply/head-name", "Rebasing mailbox onto" },
  { "rebase-merge/interactive", "rebase-merge/head-name", "Interactive rebase" },
  { "rebase-merge/", "rebase-merge/head-name", "Rebase merge" },
  { "MERGE_HEAD", ((void*)0), "Merging" },
  { "BISECT_LOG", ((void*)0), "Bisecting" },
  { "HEAD", ((void*)0), "On branch" },
 };
 char buf[SIZEOF_STR];
 struct stat stat;
 int i;

 if (is_initial_commit()) {
  string_copy(status_onbranch, "Initial commit");
  return;
 }

 for (i = 0; i < ARRAY_SIZE(paths); i++) {
  const char *prefix = paths[i][2];
  const char *head = repo.head;
  const char *tracking_info = "";

  if (!string_format(buf, "%s/%s", repo.git_dir, paths[i][0]) ||
      lstat(buf, &stat) < 0)
   continue;

  if (paths[i][1]) {
   struct io io;

   if (io_open(&io, "%s/%s", repo.git_dir, paths[i][1]) &&
       io_read_buf(&io, buf, sizeof(buf), 0)) {
    head = buf;
    if (!prefixcmp(head, "refs/heads/"))
     head += STRING_SIZE("refs/heads/");
   }
  }

  if (!*head && !strcmp(paths[i][0], "HEAD") && *repo.head_id) {
   const struct ref *ref = get_canonical_ref(repo.head_id);

   prefix = "HEAD detached at";
   head = repo.head_id;

   if (ref && strcmp(ref->name, "HEAD"))
    head = ref->name;
  } else if (!paths[i][1] && *repo.remote) {
   if (status_branch_tracking_info(buf, sizeof(buf),
       head, repo.remote)) {
    tracking_info = buf;
   }
  }

  const char *fmt = *tracking_info == '\0' ? "%s %s" : "%s %s. %s";

  if (!string_format(status_onbranch, fmt,
       prefix, head, tracking_info))
   string_copy(status_onbranch, repo.head);
  return;
 }

 string_copy(status_onbranch, "Not currently on any branch");
}
