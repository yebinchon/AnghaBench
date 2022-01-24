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
struct server_pool {int dummy; } ;
struct context {int dummy; } ;
typedef  int err_t ;

/* Variables and functions */
#define  ECONNABORTED 136 
#define  ECONNRESET 135 
#define  EHOSTDOWN 134 
#define  EHOSTUNREACH 133 
#define  ENETDOWN 132 
#define  ENETUNREACH 131 
#define  ENOTCONN 130 
#define  EPIPE 129 
#define  ETIMEDOUT 128 
 int /*<<< orphan*/  client_connections ; 
 int /*<<< orphan*/  client_eof ; 
 int /*<<< orphan*/  client_err ; 
 int /*<<< orphan*/  FUNC0 (struct context*,struct server_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct context*,struct server_pool*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct context *ctx, struct server_pool *pool, err_t err,
                   unsigned eof)
{
    FUNC0(ctx, pool, client_connections);

    if (eof) {
        FUNC1(ctx, pool, client_eof);
        return;
    }

    switch (err) {
    case EPIPE:
    case ETIMEDOUT:
    case ECONNRESET:
    case ECONNABORTED:
    case ENOTCONN:
    case ENETDOWN:
    case ENETUNREACH:
    case EHOSTDOWN:
    case EHOSTUNREACH:
    default:
        FUNC1(ctx, pool, client_err);
        break;
    }
}