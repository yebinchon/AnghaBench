#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Fts5Termset ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/ * FUNC0 (int*,int) ; 

int FUNC1(Fts5Termset **pp){
  int rc = SQLITE_OK;
  *pp = FUNC0(&rc, sizeof(Fts5Termset));
  return rc;
}