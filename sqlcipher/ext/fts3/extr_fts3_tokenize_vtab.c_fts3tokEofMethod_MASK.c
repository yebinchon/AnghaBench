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
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ zToken; } ;
typedef  TYPE_1__ Fts3tokCursor ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(sqlite3_vtab_cursor *pCursor){
  Fts3tokCursor *pCsr = (Fts3tokCursor *)pCursor;
  return (pCsr->zToken==0);
}