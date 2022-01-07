
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_2__ {int exec_dir; } ;


 int IO_WR ;



 int die (char*,int) ;
 int io_run (struct io*,int ,int ,int *,char const**) ;
 TYPE_1__ repo ;

__attribute__((used)) static bool
status_update_prepare(struct io *io, enum line_type type)
{
 const char *staged_argv[] = {
  "git", "update-index", "-z", "--index-info", ((void*)0)
 };
 const char *others_argv[] = {
  "git", "update-index", "-z", "--add", "--remove", "--stdin", ((void*)0)
 };

 switch (type) {
 case 130:
  return io_run(io, IO_WR, repo.exec_dir, ((void*)0), staged_argv);

 case 129:
 case 128:
  return io_run(io, IO_WR, repo.exec_dir, ((void*)0), others_argv);

 default:
  die("line type %d not handled in switch", type);
  return 0;
 }
}
