
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_title_entry {int text; } ;
struct screen {int * titles; int title; } ;


 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct screen_title_entry*,int ) ;
 int entry ;
 void* xmalloc (int) ;
 int xstrdup (int ) ;

void
screen_push_title(struct screen *s)
{
 struct screen_title_entry *title_entry;

 if (s->titles == ((void*)0)) {
  s->titles = xmalloc(sizeof *s->titles);
  TAILQ_INIT(s->titles);
 }
 title_entry = xmalloc(sizeof *title_entry);
 title_entry->text = xstrdup(s->title);
 TAILQ_INSERT_HEAD(s->titles, title_entry, entry);
}
