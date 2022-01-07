
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int dummy; } ;
struct io {int dummy; } ;


 char* box_text (struct line*) ;
 int io_write (struct io*,char const*,int) ;
 scalar_t__ stage_diff_done (struct line*,struct line*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool
stage_diff_write(struct io *io, struct line *line, struct line *end)
{
 while (line < end) {
  const char *text = box_text(line);

  if (!io_write(io, text, strlen(text)) ||
      !io_write(io, "\n", 1))
   return 0;
  line++;
  if (stage_diff_done(line, end))
   break;
 }

 return 1;
}
