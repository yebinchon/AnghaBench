#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  EVF_READ ; 
 int /*<<< orphan*/  EVF_TIMER ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  accept_condvar ; 
 int /*<<< orphan*/  accept_mutex ; 
 int /*<<< orphan*/  acceptor_callback ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  echoer ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tevp ; 
 int /*<<< orphan*/  timer_callback ; 

__attribute__((used)) static void *
FUNC13(void *param)
{
	struct sockaddr_in sin;
	pthread_t tid;
	int news;
	int s;
	static int first;

        if ((s = FUNC12(AF_INET, SOCK_STREAM, 0)) < 0) {
                FUNC7("socket");
                FUNC2(1);
        }

        sin.sin_len = sizeof(sin);
        sin.sin_family = AF_INET;
        sin.sin_addr.s_addr = FUNC3(INADDR_ANY);
        sin.sin_port = FUNC4(TEST_PORT);

        if (FUNC1(s, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
                FUNC7("bind");
                FUNC2(1);
        }

        if (FUNC5(s, 1) < 0) {
                FUNC7("listen");
                FUNC2(1);
        }

	(void) FUNC6(s, EVF_READ, acceptor_callback, NULL);

	FUNC11(&accept_mutex);

	while (!FUNC9(&accept_condvar, &accept_mutex)) {
		news = FUNC0(s, NULL, NULL);
		if (news < 0) {
			FUNC7("accept error");
		} else {
			static int first = 1;

			if (first) {
				/*
				 * Start a timer
				 */
				first = 0;
				tevp = FUNC6(1, EVF_TIMER, timer_callback,
						  NULL);
			}

			FUNC8("incoming connection, spawning thread\n");
			FUNC10(&tid, NULL, echoer,
				       (void *)(uintptr_t)news);
		}
	}

	return (NULL);
}