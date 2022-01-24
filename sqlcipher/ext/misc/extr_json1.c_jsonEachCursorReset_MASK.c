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
struct TYPE_3__ {scalar_t__ zRoot; scalar_t__ zJson; scalar_t__ eType; scalar_t__ iEnd; scalar_t__ i; scalar_t__ iRowid; int /*<<< orphan*/  sParse; } ;
typedef  TYPE_1__ JsonEachCursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(JsonEachCursor *p){
  FUNC1(p->zJson);
  FUNC1(p->zRoot);
  FUNC0(&p->sParse);
  p->iRowid = 0;
  p->i = 0;
  p->iEnd = 0;
  p->eType = 0;
  p->zJson = 0;
  p->zRoot = 0;
}