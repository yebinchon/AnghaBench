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
typedef  int Int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* progName ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2 ( Int32 n )
{
   FUNC1 ( stderr,
             "%s: malloc failed on request for %d bytes.\n",
            progName, n );
   FUNC1 ( stderr, "%s: warning: output file(s) may be incomplete.\n",
             progName );
   FUNC0 ( 1 );
}