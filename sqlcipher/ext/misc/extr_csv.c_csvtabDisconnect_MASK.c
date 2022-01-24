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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_3__ {struct TYPE_3__* zData; struct TYPE_3__* zFilename; } ;
typedef  TYPE_1__ CsvTable ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC1(sqlite3_vtab *pVtab){
  CsvTable *p = (CsvTable*)pVtab;
  FUNC0(p->zFilename);
  FUNC0(p->zData);
  FUNC0(p);
  return SQLITE_OK;
}