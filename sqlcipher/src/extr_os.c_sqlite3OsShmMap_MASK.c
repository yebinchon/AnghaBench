#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* pMethods; } ;
typedef  TYPE_2__ sqlite3_file ;
struct TYPE_6__ {int (* xShmMap ) (TYPE_2__*,int,int,int,void volatile**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int,int,int,void volatile**) ; 

int FUNC2(
  sqlite3_file *id,               /* Database file handle */
  int iPage,
  int pgsz,
  int bExtend,                    /* True to extend file if necessary */
  void volatile **pp              /* OUT: Pointer to mapping */
){
  FUNC0(id);
  return id->pMethods->xShmMap(id, iPage, pgsz, bExtend, pp);
}