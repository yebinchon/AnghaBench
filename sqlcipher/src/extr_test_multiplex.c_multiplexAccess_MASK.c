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
struct TYPE_3__ {int (* xAccess ) (TYPE_1__*,char const*,int,int*) ;} ;

/* Variables and functions */
 TYPE_2__ gMultiplex ; 
 int FUNC0 (TYPE_1__*,char const*,int,int*) ; 

__attribute__((used)) static int FUNC1(sqlite3_vfs *a, const char *b, int c, int *d){
  return gMultiplex.pOrigVfs->xAccess(gMultiplex.pOrigVfs, b, c, d);
}