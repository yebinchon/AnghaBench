
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int * grep; int matched_lines; TYPE_1__* env; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_2__ {int * search; } ;


 int ERROR_OUT_OF_MEMORY ;




 int SUCCESS ;
 int error (char*) ;
 int find_matches (struct view*) ;
 int find_next_match_line (struct view*,int,int) ;
 scalar_t__ opt_wrap_search ;
 int setup_and_find_next (struct view*,int) ;
 scalar_t__ strcmp (int *,int *) ;
 int success (char*,...) ;

__attribute__((used)) static enum status_code
find_next_match(struct view *view, enum request request)
{
 enum status_code code;
 int direction;

 if (!*view->grep || strcmp(view->grep, view->env->search)) {
  if (!*view->env->search)
   return success("No previous search");
  return setup_and_find_next(view, request);
 }

 switch (request) {
 case 129:
 case 131:
  direction = 1;
  break;

 case 128:
 case 130:
  direction = -1;
  break;

 default:
  return error("Unknown search request");
 }

 if (!view->matched_lines && !find_matches(view))
  return ERROR_OUT_OF_MEMORY;

 code = find_next_match_line(view, direction, 0);
 if (code != SUCCESS && opt_wrap_search)
  code = find_next_match_line(view, direction, 1);

 return code == SUCCESS ? code : success("No match found for '%s'", view->grep);
}
