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
struct TYPE_3__ {char* fBuffer; char* cBuffer; int /*<<< orphan*/  cctx; } ;
typedef  TYPE_1__ resources ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(resources ress, char *outFilename)
{
    FUNC1(ress.fBuffer);
    FUNC1(ress.cBuffer);
    FUNC0(ress.cctx);   /* never fails */
    FUNC1(outFilename);
}