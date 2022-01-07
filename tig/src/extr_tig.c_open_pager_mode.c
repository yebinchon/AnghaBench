
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum request { ____Placeholder_request } request ;


 int OPEN_FORWARD_STDIN ;
 int OPEN_STDIN ;
 int REQ_NONE ;
 int REQ_VIEW_DIFF ;
 int REQ_VIEW_PAGER ;
 int STDIN_FILENO ;
 scalar_t__ argv_contains (int ,char*) ;
 int close (int ) ;
 int open_diff_view (int *,int ) ;
 int open_main_view (int *,int ) ;
 int open_pager_view (int *,int ) ;
 int opt_cmdline_args ;
 int opt_rev_args ;
 int report (char*) ;

__attribute__((used)) static enum request
open_pager_mode(enum request request)
{
 if (request == REQ_VIEW_PAGER) {

  if (argv_contains(opt_rev_args, "--stdin")) {
   open_main_view(((void*)0), OPEN_FORWARD_STDIN);
  } else if (argv_contains(opt_cmdline_args, "--pretty=raw")) {
   open_main_view(((void*)0), OPEN_STDIN);
  } else {
   open_pager_view(((void*)0), OPEN_STDIN);
  }

 } else if (request == REQ_VIEW_DIFF) {
  if (argv_contains(opt_rev_args, "--stdin"))
   open_diff_view(((void*)0), OPEN_FORWARD_STDIN);
  else
   open_diff_view(((void*)0), OPEN_STDIN);

 } else {
  close(STDIN_FILENO);
  report("Ignoring stdin.");
  return request;
 }

 return REQ_NONE;
}
