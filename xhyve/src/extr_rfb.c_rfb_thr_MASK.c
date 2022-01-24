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
struct rfb_softc {int enc_raw_ok; int enc_zlib_ok; int enc_resize_ok; scalar_t__ conn_wait; int /*<<< orphan*/  mtx; int /*<<< orphan*/  cond; int /*<<< orphan*/  sfd; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC11(void *arg)
{
	struct rfb_softc *rc;
	sigset_t set;

	int cfd;

    FUNC6("rfb");

	rc = arg;

	FUNC10(&set);
	FUNC9(&set, SIGPIPE);
	if (FUNC7(SIG_BLOCK, &set, NULL) != 0) {
		FUNC2("pthread_sigmask");
		return (NULL);
	}

	for (;;) {
		rc->enc_raw_ok = false;
		rc->enc_zlib_ok = false;
		rc->enc_resize_ok = false;

		cfd = FUNC0(rc->sfd, NULL, NULL);
		if (rc->conn_wait) {
			FUNC4(&rc->mtx);
			FUNC3(&rc->cond);
			FUNC5(&rc->mtx);
			rc->conn_wait = 0;
		}
		FUNC8(rc, cfd);
		FUNC1(cfd);
	}

	/* NOTREACHED */
	return (NULL);
}