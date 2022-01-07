
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum request { ____Placeholder_request } request ;




 int error (char*) ;
 int find_next_merge_line (struct view*,int,int ) ;
 int opt_wrap_search ;

__attribute__((used)) static enum status_code
find_next_merge(struct view *view, enum request request)
{
 switch (request) {
 case 129:
  return find_next_merge_line(view, 1, opt_wrap_search);

 case 128:
  return find_next_merge_line(view, -1, opt_wrap_search);

 default:
  return error("Invalid request searching for next merge");
 }
}
