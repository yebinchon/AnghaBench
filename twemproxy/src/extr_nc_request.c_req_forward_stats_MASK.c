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
struct server {int dummy; } ;
struct msg {int /*<<< orphan*/  mlen; int /*<<< orphan*/  request; } ;
struct context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  request_bytes ; 
 int /*<<< orphan*/  requests ; 
 int /*<<< orphan*/  FUNC1 (struct context*,struct server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct context*,struct server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct context *ctx, struct server *server, struct msg *msg)
{
    FUNC0(msg->request);

    FUNC1(ctx, server, requests);
    FUNC2(ctx, server, request_bytes, msg->mlen);
}