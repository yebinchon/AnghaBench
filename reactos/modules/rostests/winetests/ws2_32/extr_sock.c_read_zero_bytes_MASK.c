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
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 ( SOCKET s )
{
    char buf[256];
    int tmp, n = 0;
    while ( ( tmp = FUNC1 ( s, buf, 256, 0 ) ) > 0 )
        n += tmp;
    FUNC0 ( n <= 0, "garbage data received: %d bytes\n", n );
}