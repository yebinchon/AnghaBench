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
typedef  int /*<<< orphan*/  stbi ;
struct TYPE_3__ {int /*<<< orphan*/ * s; } ;
typedef  TYPE_1__ jpeg ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_type ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(stbi *s)
{
   int r;
   jpeg j;
   j.s = s;
   r = FUNC0(&j, SCAN_type);
   FUNC1(s);
   return r;
}