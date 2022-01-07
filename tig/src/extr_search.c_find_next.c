
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef enum request { ____Placeholder_request } request ;


 int find_next_match (struct view*,int) ;
 int get_status_message (int) ;
 int report (char*,int ) ;

void
find_next(struct view *view, enum request request)
{
 enum status_code code = find_next_match(view, request);

 report("%s", get_status_message(code));
}
