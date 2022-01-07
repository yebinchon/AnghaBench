
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct style {scalar_t__ range_type; scalar_t__ range_argument; } ;
struct format_range {scalar_t__ type; scalar_t__ argument; } ;


 scalar_t__ STYLE_RANGE_WINDOW ;

__attribute__((used)) static int
format_is_type(struct format_range *fr, struct style *sy)
{
 if (fr->type != sy->range_type)
  return (0);
 if (fr->type == STYLE_RANGE_WINDOW &&
     fr->argument != sy->range_argument)
  return (0);
 return (1);
}
