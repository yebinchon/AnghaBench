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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int FUNC0 (int,char const* const,size_t,int /*<<< orphan*/ ,struct sockaddr*,int) ; 

int
FUNC1(int sfd, const char *const buf, size_t size, const struct sockaddr_in *const toAddr)
{
	int result;

	do {
		result = FUNC0(sfd, buf, size, 0,
				(struct sockaddr *) toAddr,
				(int) sizeof(struct sockaddr_in));
	} while ((result < 0) && (errno == EINTR));
	return (result);
}