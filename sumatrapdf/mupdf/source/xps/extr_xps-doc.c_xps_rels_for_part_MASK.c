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
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, xps_document *doc, char *buf, char *name, int buflen)
{
	char *p, *basename;
	p = FUNC2(name, '/');
	basename = p ? p + 1 : name;
	FUNC1(buf, name, buflen);
	p = FUNC2(buf, '/');
	if (p) *p = 0;
	FUNC0(buf, "/_rels/", buflen);
	FUNC0(buf, basename, buflen);
	FUNC0(buf, ".rels", buflen);
}