
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ** str; } ;
struct TYPE_10__ {scalar_t__ status; struct TYPE_10__* next; TYPE_1__ rrs; scalar_t__ rest; scalar_t__ addr; int start; int query; } ;
typedef TYPE_2__ logline ;
typedef int adns_state ;
typedef int adns_initflags ;
typedef TYPE_2__ adns_answer ;
typedef int FILE ;


 int EAGAIN ;
 int EWOULDBLOCK ;
 int OPT_DEBUG ;
 int OPT_POLL ;
 int aargh (char*) ;
 int adns_check (int ,int *,TYPE_2__**,int *) ;
 int adns_finish (int ) ;
 int adns_if_debug ;
 scalar_t__ adns_init (int *,int ,int ) ;
 scalar_t__ adns_init_strcfg (int *,int ,int ,scalar_t__) ;
 scalar_t__ adns_s_ok ;
 int adns_wait (int ,int *,TYPE_2__**,int *) ;
 int adns_wait_poll (int ,int *,TYPE_2__**,int *) ;
 scalar_t__ config_text ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int free (TYPE_2__*) ;
 int guard_null (scalar_t__) ;
 int msg (char*,int,scalar_t__,int ) ;
 int printline (int *,int ,scalar_t__,scalar_t__,int *) ;
 char* progname ;
 TYPE_2__* readline (int *,int ,int) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void proclog(FILE *inf, FILE *outf, int maxpending, int opts) {
  int eof, err, len;
  adns_state adns;
  adns_answer *answer;
  logline *head, *tail, *line;
  adns_initflags initflags;

  initflags= (opts & OPT_DEBUG) ? adns_if_debug : 0;
  if (config_text) {
    errno= adns_init_strcfg(&adns, initflags, stderr, config_text);
  } else {
    errno= adns_init(&adns, initflags, 0);
  }
  if (errno) aargh("adns_init");
  head= tail= readline(inf, adns, opts);
  len= 1; eof= 0;
  while (head) {
    while (head) {
      if (opts & OPT_DEBUG)
 msg("%d in queue; checking %.*s", len,
     head->rest-head->addr, guard_null(head->addr));
      if (eof || len >= maxpending) {





   err= adns_wait(adns, &head->query, &answer, ((void*)0));
      } else {
 err= adns_check(adns, &head->query, &answer, ((void*)0));
      }
      if ((err == EAGAIN) || (EWOULDBLOCK == err)) break;
      if (err) {
 fprintf(stderr, "%s: adns_wait/check: %s", progname, strerror(err));
 exit(1);
      }
      printline(outf, head->start, head->addr, head->rest,
  answer->status == adns_s_ok ? *answer->rrs.str : ((void*)0));
      line= head; head= head->next;
      free(line);
      free(answer);
      len--;
    }
    if (!eof) {
      line= readline(inf, adns, opts);
      if (line) {
        if (!head) head= line;
        else tail->next= line;
        tail= line; len++;
      } else {
 eof= 1;
      }
    }
  }
  adns_finish(adns);
}
