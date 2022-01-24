#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ ** str; } ;
struct TYPE_10__ {scalar_t__ status; struct TYPE_10__* next; TYPE_1__ rrs; scalar_t__ rest; scalar_t__ addr; int /*<<< orphan*/  start; int /*<<< orphan*/  query; } ;
typedef  TYPE_2__ logline ;
typedef  int /*<<< orphan*/  adns_state ;
typedef  int /*<<< orphan*/  adns_initflags ;
typedef  TYPE_2__ adns_answer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EAGAIN ; 
 int EWOULDBLOCK ; 
 int OPT_DEBUG ; 
 int OPT_POLL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adns_if_debug ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ adns_s_ok ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *) ; 
 scalar_t__ config_text ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 char* progname ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(FILE *inf, FILE *outf, int maxpending, int opts) {
  int eof, err, len;
  adns_state adns;
  adns_answer *answer;
  logline *head, *tail, *line;
  adns_initflags initflags;

  initflags= (opts & OPT_DEBUG) ? adns_if_debug : 0;
  if (config_text) {
    errno= FUNC4(&adns, initflags, stderr, config_text);
  } else {
    errno= FUNC3(&adns, initflags, 0);
  }
  if (errno) FUNC0("adns_init");
  head= tail= FUNC13(inf, adns, opts);
  len= 1; eof= 0;
  while (head) {
    while (head) {
      if (opts & OPT_DEBUG)
	FUNC11("%d in queue; checking %.*s", len,
	    head->rest-head->addr, FUNC10(head->addr));
      if (eof || len >= maxpending) {
#ifdef HAVE_POLL
	if (opts & OPT_POLL)
	  err= adns_wait_poll(adns, &head->query, &answer, NULL);
	else
#endif
	  err= FUNC5(adns, &head->query, &answer, NULL);
      } else {
	err= FUNC1(adns, &head->query, &answer, NULL);
      }
      if ((err == EAGAIN) || (EWOULDBLOCK == err)) break;
      if (err) {
	FUNC8(stderr, "%s: adns_wait/check: %s", progname, FUNC14(err));
	FUNC7(1);
      }
      FUNC12(outf, head->start, head->addr, head->rest,
		answer->status == adns_s_ok ? *answer->rrs.str : NULL);
      line= head; head= head->next;
      FUNC9(line);
      FUNC9(answer);
      len--;
    }
    if (!eof) {
      line= FUNC13(inf, adns, opts);
      if (line) {
        if (!head) head= line;
        else tail->next= line;
        tail= line; len++;
      } else {
	eof= 1;
      }
    }
  }
  FUNC2(adns);
}