
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int data; } ;


 scalar_t__ view_has_line (struct view*,struct line*) ;

__attribute__((used)) static inline bool
status_has_none(struct view *view, struct line *line)
{
 return view_has_line(view, line) && !line[1].data;
}
