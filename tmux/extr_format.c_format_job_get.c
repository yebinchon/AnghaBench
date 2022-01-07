
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct format_tree {int flags; TYPE_1__* client; int tag; } ;
struct format_job_tree {int dummy; } ;
struct format_job {char const* cmd; char* out; scalar_t__ last; int status; scalar_t__ updated; int * job; int * expanded; int tag; TYPE_1__* client; } ;
struct TYPE_2__ {struct format_job_tree* jobs; } ;


 int FORMAT_FORCE ;
 int FORMAT_STATUS ;
 int JOB_NOWAIT ;
 struct format_job* RB_FIND (int ,struct format_job_tree*,struct format_job*) ;
 int RB_INIT (struct format_job_tree*) ;
 int RB_INSERT (int ,struct format_job_tree*,struct format_job*) ;
 char* format_expand (struct format_tree*,char const*) ;
 int format_job_complete ;
 int format_job_tree ;
 int format_job_update ;
 struct format_job_tree format_jobs ;
 int free (char*) ;
 int job_free (int *) ;
 int * job_run (char*,int *,int ,int ,int ,int *,struct format_job*,int ) ;
 int server_client_get_cwd (TYPE_1__*,int *) ;
 scalar_t__ strcmp (char*,int *) ;
 scalar_t__ time (int *) ;
 int xasprintf (char**,char*,char const*) ;
 struct format_job* xcalloc (int,int) ;
 struct format_job_tree* xmalloc (int) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static char *
format_job_get(struct format_tree *ft, const char *cmd)
{
 struct format_job_tree *jobs;
 struct format_job fj0, *fj;
 time_t t;
 char *expanded;
 int force;

 if (ft->client == ((void*)0))
  jobs = &format_jobs;
 else if (ft->client->jobs != ((void*)0))
  jobs = ft->client->jobs;
 else {
  jobs = ft->client->jobs = xmalloc(sizeof *ft->client->jobs);
  RB_INIT(jobs);
 }

 fj0.tag = ft->tag;
 fj0.cmd = cmd;
 if ((fj = RB_FIND(format_job_tree, jobs, &fj0)) == ((void*)0)) {
  fj = xcalloc(1, sizeof *fj);
  fj->client = ft->client;
  fj->tag = ft->tag;
  fj->cmd = xstrdup(cmd);
  fj->expanded = ((void*)0);

  xasprintf(&fj->out, "<'%s' not ready>", fj->cmd);

  RB_INSERT(format_job_tree, jobs, fj);
 }

 expanded = format_expand(ft, cmd);
 if (fj->expanded == ((void*)0) || strcmp(expanded, fj->expanded) != 0) {
  free((void *)fj->expanded);
  fj->expanded = xstrdup(expanded);
  force = 1;
 } else
  force = (ft->flags & FORMAT_FORCE);

 t = time(((void*)0));
 if (force && fj->job != ((void*)0))
        job_free(fj->job);
 if (force || (fj->job == ((void*)0) && fj->last != t)) {
  fj->job = job_run(expanded, ((void*)0),
      server_client_get_cwd(ft->client, ((void*)0)), format_job_update,
      format_job_complete, ((void*)0), fj, JOB_NOWAIT);
  if (fj->job == ((void*)0)) {
   free(fj->out);
   xasprintf(&fj->out, "<'%s' didn't start>", fj->cmd);
  }
  fj->last = t;
  fj->updated = 0;
 }

 if (ft->flags & FORMAT_STATUS)
  fj->status = 1;

 free(expanded);
 return (format_expand(ft, fj->out));
}
