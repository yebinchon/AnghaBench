#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vfs ;
struct TYPE_4__ {TYPE_1__* pOrigVfs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* xDlError ) (TYPE_1__*,int,char*) ;} ;

/* Variables and functions */
 TYPE_2__ gMultiplex ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char*) ; 

__attribute__((used)) static void FUNC1(sqlite3_vfs *a, int b, char *c){
  gMultiplex.pOrigVfs->xDlError(gMultiplex.pOrigVfs, b, c);
}