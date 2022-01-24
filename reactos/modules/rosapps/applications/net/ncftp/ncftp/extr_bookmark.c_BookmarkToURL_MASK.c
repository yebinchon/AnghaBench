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
struct TYPE_3__ {char* user; char* pass; char* name; int port; char* dir; } ;
typedef  TYPE_1__* BookmarkPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 

void
FUNC3(BookmarkPtr bmp, char *url, size_t urlsize)
{
	char pbuf[32];

	/* //<user>:<password>@<host>:<port>/<url-path> */
	/* Note that if an absolute path is given,
	 * you need to escape the first entry, i.e. /pub -> %2Fpub
	 */
	(void) FUNC1(url, "ftp://", urlsize);
	if (bmp->user[0] != '\0') {
		(void) FUNC0(url, bmp->user, urlsize);
		if (bmp->pass[0] != '\0') {
			(void) FUNC0(url, ":", urlsize);
			(void) FUNC0(url, "PASSWORD", urlsize);
		}
		(void) FUNC0(url, "@", urlsize);
	}
	(void) FUNC0(url, bmp->name, urlsize);
	if (bmp->port != 21) {
		(void) FUNC2(pbuf, ":%u", (unsigned int) bmp->port);
		(void) FUNC0(url, pbuf, urlsize);
	}
	if (bmp->dir[0] == '/') {
		/* Absolute URL path, must escape first slash. */
		(void) FUNC0(url, "/%2F", urlsize);
		(void) FUNC0(url, bmp->dir + 1, urlsize);
		(void) FUNC0(url, "/", urlsize);
	} else if (bmp->dir[0] != '\0') {
		(void) FUNC0(url, "/", urlsize);
		(void) FUNC0(url, bmp->dir, urlsize);
		(void) FUNC0(url, "/", urlsize);
	}
}