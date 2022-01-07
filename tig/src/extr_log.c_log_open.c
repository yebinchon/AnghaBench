
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int begin_update (struct view*,int *,char const**,int) ;
 char* commit_order_arg () ;
 char* encoding_arg ;

__attribute__((used)) static enum status_code
log_open(struct view *view, enum open_flags flags)
{
 const char *log_argv[] = {
  "git", "log", encoding_arg, commit_order_arg(), "--cc",
   "--stat", "%(logargs)", "%(cmdlineargs)", "%(revargs)",
   "--no-color", "--", "%(fileargs)", ((void*)0)
 };

 return begin_update(view, ((void*)0), log_argv, flags);
}
