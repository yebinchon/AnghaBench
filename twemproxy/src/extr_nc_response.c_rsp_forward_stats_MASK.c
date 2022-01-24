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
typedef  int /*<<< orphan*/  uint32_t ;
struct server {int dummy; } ;
struct msg {int /*<<< orphan*/  request; } ;
struct context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  response_bytes ; 
 int /*<<< orphan*/  responses ; 
 int /*<<< orphan*/  FUNC1 (struct context*,struct server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct context*,struct server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct context *ctx, struct server *server, struct msg *msg, uint32_t msgsize)
{
    FUNC0(!msg->request);

    FUNC1(ctx, server, responses);
    FUNC2(ctx, server, response_bytes, msgsize);
}