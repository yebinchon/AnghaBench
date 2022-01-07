
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {size_t lines; TYPE_2__* line; } ;
struct reference {int title; int time; int author; TYPE_1__* ref; int member_0; } ;
struct buffer {char* data; } ;
struct TYPE_4__ {int dirty; struct reference* data; } ;
struct TYPE_3__ {int id; } ;


 char* io_memchr (struct buffer*,char*,int ) ;
 int parse_author_line (char*,int *,int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int string_expand (int ,int,char*,int ,int) ;
 int strlen (char*) ;
 int view_column_info_update (struct view*,TYPE_2__*) ;

__attribute__((used)) static bool
refs_read(struct view *view, struct buffer *buf, bool force_stop)
{
 struct reference template = {0};
 char *author;
 char *title;
 size_t i;

 if (!buf)
  return 1;

 if (!*buf->data)
  return 0;

 author = io_memchr(buf, buf->data, 0);
 title = io_memchr(buf, author, 0);

 if (author)
  parse_author_line(author, &template.author, &template.time);

 for (i = 0; i < view->lines; i++) {
  struct reference *reference = view->line[i].data;

  if (strcmp(reference->ref->id, buf->data))
   continue;

  reference->author = template.author;
  reference->time = template.time;

  if (title)
   string_expand(reference->title, sizeof(reference->title), title, strlen(title), 1);

  view->line[i].dirty = 1;
  view_column_info_update(view, &view->line[i]);
 }

 return 1;
}
