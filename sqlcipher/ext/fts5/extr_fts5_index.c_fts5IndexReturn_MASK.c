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
struct TYPE_3__ {int rc; } ;
typedef  TYPE_1__ Fts5Index ;

/* Variables and functions */
 int SQLITE_OK ; 

__attribute__((used)) static int FUNC0(Fts5Index *p){
  int rc = p->rc;
  p->rc = SQLITE_OK;
  return rc;
}