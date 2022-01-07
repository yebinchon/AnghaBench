
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repo_info_state {char const** member_0; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int io_run_load (char const**,char*,int ,struct repo_info_state*) ;
 int read_repo_info ;

__attribute__((used)) static enum status_code
reload_repo_info(const char **rev_parse_argv)
{
 struct repo_info_state state = { rev_parse_argv + 2 };

 return io_run_load(rev_parse_argv, "\n", read_repo_info, &state);
}
