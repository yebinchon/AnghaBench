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
typedef  int /*<<< orphan*/  useconds_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct rfb_softc {int cfd; } ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct rfb_softc*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC6 (struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC8(void *arg)
{
	struct rfb_softc *rc;
	fd_set rfds;
	struct timeval tv;
	struct timeval prev_tv;
	int64_t tdiff;
	int cfd;
	int err;

    FUNC3("rfbout");

	rc = arg;
	cfd = rc->cfd;

	prev_tv.tv_sec = 0;
	prev_tv.tv_usec = 0;
	while (rc->cfd >= 0) {
		FUNC1(&rfds);
		FUNC0(cfd, &rfds);
		tv.tv_sec = 0;
		tv.tv_usec = 10000;

		err = FUNC5(cfd+1, &rfds, NULL, NULL, &tv);
                if (err < 0)
			return (NULL);

		/* Determine if its time to push screen; ~24hz */
		FUNC2(&tv, NULL);
		tdiff = FUNC6(&prev_tv, &tv);
		if (tdiff > 40000) {
			prev_tv.tv_sec = tv.tv_sec;
			prev_tv.tv_usec = tv.tv_usec;
			if (FUNC4(rc, cfd, 0) <= 0) {
				return (NULL);
			}
		} else {
			/* sleep */
			FUNC7((useconds_t)(40000 - tdiff));
		}
	}

	return (NULL);
}