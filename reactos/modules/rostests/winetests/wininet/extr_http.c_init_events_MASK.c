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
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 void* complete_event ; 
 void* conn_close_event ; 
 void* conn_wait_event ; 
 void* request_sent_event ; 
 void* server_req_rec_event ; 

__attribute__((used)) static void FUNC1(void)
{
    complete_event = FUNC0(NULL, FALSE, FALSE, NULL);
    conn_close_event = FUNC0(NULL, FALSE, FALSE, NULL);
    conn_wait_event = FUNC0(NULL, FALSE, FALSE, NULL);
    server_req_rec_event = FUNC0(NULL, FALSE, FALSE, NULL);
    request_sent_event = FUNC0(NULL, FALSE, FALSE, NULL);
}