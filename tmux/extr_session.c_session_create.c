
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
struct session {int references; int creation_time; int id; int * name; int * tio; struct options* options; struct environ* environ; int windows; int lastw; int * curw; void* cwd; scalar_t__ flags; } ;
struct options {int dummy; } ;
struct environ {int dummy; } ;


 int * RB_FIND (int ,int *,struct session*) ;
 int RB_INIT (int *) ;
 int RB_INSERT (int ,int *,struct session*) ;
 int TAILQ_INIT (int *) ;
 int fatal (char*) ;
 int free (int *) ;
 scalar_t__ gettimeofday (int *,int *) ;
 int log_debug (char*,int *,int ) ;
 int memcpy (int *,struct termios*,int) ;
 int next_session_id ;
 int session_update_activity (struct session*,int *) ;
 int sessions ;
 int status_update_cache (struct session*) ;
 int xasprintf (int **,char*,char const*,...) ;
 struct session* xcalloc (int,int) ;
 int * xmalloc (int) ;
 void* xstrdup (char const*) ;

struct session *
session_create(const char *prefix, const char *name, const char *cwd,
    struct environ *env, struct options *oo, struct termios *tio)
{
 struct session *s;

 s = xcalloc(1, sizeof *s);
 s->references = 1;
 s->flags = 0;

 s->cwd = xstrdup(cwd);

 s->curw = ((void*)0);
 TAILQ_INIT(&s->lastw);
 RB_INIT(&s->windows);

 s->environ = env;
 s->options = oo;

 status_update_cache(s);

 s->tio = ((void*)0);
 if (tio != ((void*)0)) {
  s->tio = xmalloc(sizeof *s->tio);
  memcpy(s->tio, tio, sizeof *s->tio);
 }

 if (name != ((void*)0)) {
  s->name = xstrdup(name);
  s->id = next_session_id++;
 } else {
  s->name = ((void*)0);
  do {
   s->id = next_session_id++;
   free(s->name);
   if (prefix != ((void*)0))
    xasprintf(&s->name, "%s-%u", prefix, s->id);
   else
    xasprintf(&s->name, "%u", s->id);
  } while (RB_FIND(sessions, &sessions, s) != ((void*)0));
 }
 RB_INSERT(sessions, &sessions, s);

 log_debug("new session %s $%u", s->name, s->id);

 if (gettimeofday(&s->creation_time, ((void*)0)) != 0)
  fatal("gettimeofday failed");
 session_update_activity(s, &s->creation_time);

 return (s);
}
