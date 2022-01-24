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
typedef  int /*<<< orphan*/  sd_event_source ;
typedef  int /*<<< orphan*/  curl_socket_t ;
struct TYPE_6__ {int /*<<< orphan*/  ios; int /*<<< orphan*/  curl; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ CurlGlue ;
typedef  TYPE_1__ CURLM ;

/* Variables and functions */
 scalar_t__ CURLM_OK ; 
 int CURL_POLL_IN ; 
 int CURL_POLL_INOUT ; 
 int CURL_POLL_OUT ; 
 int CURL_POLL_REMOVE ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_EVENT_ON ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  curl_glue_on_io ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trivial_hash_ops ; 

__attribute__((used)) static int FUNC13(CURLM *curl, curl_socket_t s, int action, void *userdata, void *socketp) {
        sd_event_source *io = socketp;
        CurlGlue *g = userdata;
        uint32_t events = 0;
        int r;

        FUNC1(curl);
        FUNC1(g);

        if (action == CURL_POLL_REMOVE) {
                if (io) {
                        FUNC8(io);

                        FUNC5(g->ios, FUNC0(s));
                }

                return 0;
        }

        r = FUNC3(&g->ios, &trivial_hash_ops);
        if (r < 0) {
                FUNC6();
                return -1;
        }

        if (action == CURL_POLL_IN)
                events = EPOLLIN;
        else if (action == CURL_POLL_OUT)
                events = EPOLLOUT;
        else if (action == CURL_POLL_INOUT)
                events = EPOLLIN|EPOLLOUT;

        if (io) {
                if (FUNC11(io, events) < 0)
                        return -1;

                if (FUNC10(io, SD_EVENT_ON) < 0)
                        return -1;
        } else {
                if (FUNC7(g->event, &io, s, events, curl_glue_on_io, g) < 0)
                        return -1;

                if (FUNC2(g->curl, s, io) != CURLM_OK)
                        return -1;

                (void) FUNC9(io, "curl-io");

                r = FUNC4(g->ios, FUNC0(s), io);
                if (r < 0) {
                        FUNC6();
                        FUNC12(io);
                        return -1;
                }
        }

        return 0;
}