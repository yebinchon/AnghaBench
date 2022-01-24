#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct outqueuenode {char* buffer; char* textp; int textlen; TYPE_3__* addr; } ;
struct TYPE_6__ {TYPE_2__* ans; } ;
struct TYPE_4__ {char** str; } ;
struct TYPE_5__ {TYPE_1__ rrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  address ; 
 scalar_t__ bracket ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int,char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct outqueuenode *entry) {
  char *name, *newbuf;
  int namelen, newlen;

  name= entry->addr->ans->rrs.str[0];
  namelen= FUNC2(name);
  if (!address) {
    FUNC0(entry->buffer);
    entry->buffer= 0;
    entry->textp= name;
    entry->textlen= namelen;
  } else {
    newlen= entry->textlen + namelen + (bracket ? 0 : 2);
    newbuf= FUNC3(newlen + 1);
    FUNC1(newbuf, bracket ? "%s%.*s" : "%s[%.*s]", name, entry->textlen, entry->textp);
    FUNC0(entry->buffer);
    entry->buffer= entry->textp= newbuf;
    entry->textlen= newlen;
  }
}