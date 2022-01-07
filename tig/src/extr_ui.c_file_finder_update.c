
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_finder_line {scalar_t__ matches; } ;
struct TYPE_2__ {size_t lineno; } ;
struct file_finder {int lines; scalar_t__ searchlen; TYPE_1__ pos; struct file_finder_line** line; int search; struct file_finder_line** file; } ;


 scalar_t__ file_finder_line_matches (struct file_finder_line*,int ) ;
 int memset (struct file_finder_line**,int ,int) ;

__attribute__((used)) static void
file_finder_update(struct file_finder *finder)
{
 struct file_finder_line *current = finder->line[finder->pos.lineno];
 size_t new_lineno = 0;
 int i;

 memset(finder->line, 0, sizeof(*finder->line) * finder->lines);
 finder->lines = 0;

 for (i = 0; finder->file && finder->file[i]; i++) {
  struct file_finder_line *line = finder->file[i];

  if (line == current)
   current = ((void*)0);

  if (line->matches + 1 < finder->searchlen) {
   continue;
  }

  if (line->matches >= finder->searchlen) {
   line->matches = finder->searchlen;
  } else {
   line->matches = file_finder_line_matches(line, finder->search);
   if (line->matches < finder->searchlen)
    continue;
  }

  if (current != ((void*)0))
   new_lineno++;

  finder->line[finder->lines++] = line;
 }

 finder->pos.lineno = new_lineno;
}
