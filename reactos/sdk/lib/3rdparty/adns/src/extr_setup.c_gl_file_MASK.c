#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * file; } ;
typedef  TYPE_1__ getline_ctx ;
typedef  int /*<<< orphan*/  adns_state ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char const*,int,...) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(adns_state ads, getline_ctx *src_io, const char *filename,
		   int lno, char *buf, int buflen) {
  FILE *file= src_io->file;
  int c, i;
  char *p;

  p= buf;
  buflen--;
  i= 0;

  for (;;) { /* loop over chars */
    if (i == buflen) {
      FUNC0(ads,-1,0,"%s:%d: line too long, ignored",filename,lno);
      goto x_badline;
    }
    c= FUNC2(file);
    if (!c) {
      FUNC0(ads,-1,0,"%s:%d: line contains nul, ignored",filename,lno);
      goto x_badline;
    } else if (c == '\n') {
      break;
    } else if (c == EOF) {
      if (FUNC1(file)) {
	FUNC3(ads,errno);
	FUNC0(ads,-1,0,"%s:%d: read error: %s",filename,lno,FUNC4(errno));
	return -1;
      }
      if (!i) return -1;
      break;
    } else {
      *p++= c;
      i++;
    }
  }

  *p++= 0;
  return i;

 x_badline:
  FUNC3(ads,EINVAL);
  while ((c= FUNC2(file)) != EOF && c != '\n');
  return -2;
}