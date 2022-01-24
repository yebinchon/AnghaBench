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
struct TYPE_3__ {int /*<<< orphan*/ * f; } ;
typedef  TYPE_1__ quota_FILE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 

long FUNC2(quota_FILE *p){
  FILE* f = p->f;
  long pos1, pos2;
  int rc;
  pos1 = FUNC1(f);
  if ( pos1 < 0 ) return -1;
  rc = FUNC0(f, 0, SEEK_END);
  if ( rc != 0 ) return -1;
  pos2 = FUNC1(f);
  if ( pos2 < 0 ) return -1;
  rc = FUNC0(f, pos1, SEEK_SET);
  if ( rc != 0 ) return -1;
  return pos2 - pos1;
}