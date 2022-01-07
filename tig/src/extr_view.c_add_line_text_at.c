
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct line {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 struct line* add_line_text_at_ (struct view*,unsigned long,char const*,int ,int,size_t,int) ;
 int strlen (char const*) ;

struct line *
add_line_text_at(struct view *view, unsigned long pos, const char *text, enum line_type type, size_t cells)
{
 return add_line_text_at_(view, pos, text, strlen(text), type, cells, 0);
}
