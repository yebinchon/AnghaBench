
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_title_entry {struct screen_title_entry* text; } ;
struct screen {struct screen_title_entry* titles; } ;


 struct screen_title_entry* TAILQ_FIRST (struct screen_title_entry*) ;
 int TAILQ_REMOVE (struct screen_title_entry*,struct screen_title_entry*,int ) ;
 int entry ;
 int free (struct screen_title_entry*) ;

__attribute__((used)) static void
screen_free_titles(struct screen *s)
{
 struct screen_title_entry *title_entry;

 if (s->titles == ((void*)0))
  return;

 while ((title_entry = TAILQ_FIRST(s->titles)) != ((void*)0)) {
  TAILQ_REMOVE(s->titles, title_entry, entry);
  free(title_entry->text);
  free(title_entry);
 }

 free(s->titles);
 s->titles = ((void*)0);
}
