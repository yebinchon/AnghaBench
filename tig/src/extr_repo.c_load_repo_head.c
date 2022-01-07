
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {int head_id; int head; } ;


 char* REPO_INFO_RESOLVED_HEAD ;
 char* REPO_INFO_SYMBOLIC_HEAD ;
 int memset (int ,int ,int) ;
 int reload_repo_info (char const**) ;
 TYPE_1__ repo ;

enum status_code
load_repo_head(void)
{
 const char *rev_parse_argv[] = {
  "git", "rev-parse", REPO_INFO_RESOLVED_HEAD,
   REPO_INFO_SYMBOLIC_HEAD, "HEAD", ((void*)0)
 };

 memset(repo.head, 0, sizeof(repo.head));
 memset(repo.head_id, 0, sizeof(repo.head_id));
 return reload_repo_info(rev_parse_argv);
}
