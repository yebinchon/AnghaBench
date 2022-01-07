
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watch_handler {int last_modified; } ;
struct ref {int name; } ;
typedef enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;
typedef enum watch_event { ____Placeholder_watch_event } watch_event ;
struct TYPE_2__ {int git_dir; } ;


 int WATCH_HEAD ;
 int WATCH_NONE ;
 scalar_t__ check_file_mtime (int *,char*,int ,...) ;
 struct ref* get_ref_head () ;
 TYPE_1__ repo ;

__attribute__((used)) static enum watch_trigger
watch_head_handler(struct watch_handler *handler, enum watch_event event, enum watch_trigger check)
{
 const struct ref *head;

 if (check_file_mtime(&handler->last_modified, "%s/HEAD", repo.git_dir))
  return WATCH_HEAD;


 if ((head = get_ref_head()) &&
     check_file_mtime(&handler->last_modified, "%s/refs/heads/%s", repo.git_dir, head->name))
  return WATCH_HEAD;

 return WATCH_NONE;
}
