
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_title_entry {struct screen_title_entry* text; } ;
struct screen {int * titles; } ;


 struct screen_title_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct screen_title_entry*,int ) ;
 int entry ;
 int free (struct screen_title_entry*) ;
 int screen_set_title (struct screen*,struct screen_title_entry*) ;

void
screen_pop_title(struct screen *s)
{
 struct screen_title_entry *title_entry;

 if (s->titles == ((void*)0))
  return;

 title_entry = TAILQ_FIRST(s->titles);
 if (title_entry != ((void*)0)) {
  screen_set_title(s, title_entry->text);

  TAILQ_REMOVE(s->titles, title_entry, entry);
  free(title_entry->text);
  free(title_entry);
 }
}
