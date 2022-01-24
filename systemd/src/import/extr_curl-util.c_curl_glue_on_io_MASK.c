#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  curl; } ;
typedef  TYPE_1__ sd_event_source ;
typedef  TYPE_1__ CurlGlue ;

/* Variables and functions */
 scalar_t__ CURLM_OK ; 
 int CURL_POLL_IN ; 
 int CURL_POLL_INOUT ; 
 int CURL_POLL_OUT ; 
 int /*<<< orphan*/  EINVAL ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        CurlGlue *g = userdata;
        int action, k = 0;

        FUNC2(s);
        FUNC2(g);

        if (FUNC0(revents, EPOLLIN | EPOLLOUT))
                action = CURL_POLL_INOUT;
        else if (revents & EPOLLIN)
                action = CURL_POLL_IN;
        else if (revents & EPOLLOUT)
                action = CURL_POLL_OUT;
        else
                action = 0;

        if (FUNC4(g->curl, fd, action, &k) != CURLM_OK)
                return FUNC5(FUNC1(EINVAL),
                                       "Failed to propagate IO event.");

        FUNC3(g);
        return 0;
}