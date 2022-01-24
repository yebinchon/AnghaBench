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
 scalar_t__ LIBXML_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(int version) {
    int myversion = (int) LIBXML_VERSION;

    FUNC2();

    if ((myversion / 10000) != (version / 10000)) {
	FUNC1(xmlGenericErrorContext,
		"Fatal: program compiled against libxml %d using libxml %d\n",
		(version / 10000), (myversion / 10000));
	FUNC0(stderr,
		"Fatal: program compiled against libxml %d using libxml %d\n",
		(version / 10000), (myversion / 10000));
    }
    if ((myversion / 100) < (version / 100)) {
	FUNC1(xmlGenericErrorContext,
		"Warning: program compiled against libxml %d using older %d\n",
		(version / 100), (myversion / 100));
    }
}