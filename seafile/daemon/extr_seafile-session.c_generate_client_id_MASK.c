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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,char*,int) ; 

__attribute__((used)) static char *
FUNC5 ()
{
    char *uuid = FUNC3();
    unsigned char buf[20];
    char sha1[41];

    FUNC0 (buf, uuid, 20);
    FUNC4 (buf, sha1, 20);

    FUNC1 (uuid);
    return FUNC2(sha1);
}