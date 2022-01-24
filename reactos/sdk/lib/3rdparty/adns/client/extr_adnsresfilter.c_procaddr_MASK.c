#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct treething {scalar_t__ qu; int /*<<< orphan*/ * bytes; scalar_t__ ans; } ;
struct sockaddr {int dummy; } ;
struct outqueuenode {int textlen; int /*<<< orphan*/  printbefore; struct treething* addr; int /*<<< orphan*/ * textp; int /*<<< orphan*/ * buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  sin_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct outqueuenode*) ; 
 int /*<<< orphan*/  addrtextbuf ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct treething*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  ads ; 
 int /*<<< orphan*/  bytes ; 
 int cbyte ; 
 int /*<<< orphan*/  comparer ; 
 int inbuf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct treething* newthing ; 
 int /*<<< orphan*/  outqueue ; 
 int /*<<< orphan*/  outqueuelen ; 
 int /*<<< orphan*/  printbefore ; 
 int /*<<< orphan*/  rrt ; 
 TYPE_1__ sa ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  treeroot ; 
 void** FUNC5 (struct treething*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void) {
  struct treething *foundthing;
  void **searchfound;
  struct outqueuenode *entry;
  int r;

  if (!newthing) {
    newthing= FUNC6(sizeof(struct treething));
    newthing->qu= 0;
    newthing->ans= 0;
  }

  FUNC3(newthing->bytes,bytes,4);
  searchfound= FUNC5(newthing,&treeroot,comparer);
  if (!searchfound) FUNC4("tsearch");
  foundthing= *searchfound;

  if (foundthing == newthing) {
    newthing= 0;
    FUNC3(&sa.sin_addr,bytes,4);
    r= FUNC1(ads, (const struct sockaddr*)&sa,
			   rrt,0,foundthing,&foundthing->qu);
    if (r) FUNC2("submit",r);
  }
  entry= FUNC6(sizeof(*entry));
  entry->buffer= FUNC6(inbuf);
  entry->textp= entry->buffer;
  FUNC3(entry->textp,addrtextbuf,inbuf);
  entry->textlen= inbuf;
  entry->addr= foundthing;
  entry->printbefore= printbefore;
  FUNC0(outqueue,entry);
  outqueuelen++;
  inbuf= 0;
  cbyte= -1;
}