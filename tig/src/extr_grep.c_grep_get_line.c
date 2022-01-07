
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {scalar_t__ type; struct grep_line* data; } ;
struct grep_line {char* file; } ;


 scalar_t__ LINE_DEFAULT ;
 scalar_t__ LINE_DELIMITER ;
 int box_text (struct line const*) ;
 char* get_path (int ) ;

__attribute__((used)) static struct grep_line *
grep_get_line(const struct line *line)
{
 static struct grep_line grep_line;

 if (line->type == LINE_DEFAULT)
  return line->data;

 grep_line.file = line->type == LINE_DELIMITER ? "" : get_path(box_text(line));
 return &grep_line;
}
