
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int io_run_load (char const**,char*,int ,int *) ;
 int read_repo_config_option ;

enum status_code
load_git_config(void)
{
 const char *config_list_argv[] = { "git", "config", "--list", ((void*)0) };

 return io_run_load(config_list_argv, "=", read_repo_config_option, ((void*)0));
}
