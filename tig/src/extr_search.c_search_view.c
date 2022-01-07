
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int dummy; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_2__ {scalar_t__* search; } ;


 int REQ_SEARCH ;
 TYPE_1__ argv_env ;
 int find_next (struct view*,int) ;
 int get_status_message (int) ;
 char* read_prompt (char const*) ;
 int report (char*,int ) ;
 int report_clear () ;
 int setup_and_find_next (struct view*,int) ;
 int string_ncopy (scalar_t__*,char*,int ) ;
 int strlen (char*) ;

void
search_view(struct view *view, enum request request)
{
 const char *prompt = request == REQ_SEARCH ? "/" : "?";
 char *search = read_prompt(prompt);

 if (search && *search) {
  enum status_code code;

  string_ncopy(argv_env.search, search, strlen(search));
  code = setup_and_find_next(view, request);
  report("%s", get_status_message(code));
 } else if (search && *argv_env.search) {
  find_next(view, request);
 } else {
  report_clear();
 }
}
