#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  status ;
struct TYPE_3__ {int /*<<< orphan*/  ssl; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ connection ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  OK ; 
 int /*<<< orphan*/  RETRY ; 
#define  SSL_ERROR_WANT_READ 129 
#define  SSL_ERROR_WANT_WRITE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

status FUNC4(connection *c, char *host) {
    int r;
    FUNC2(c->ssl, c->fd);
    FUNC3(c->ssl, host);
    if ((r = FUNC0(c->ssl)) != 1) {
        switch (FUNC1(c->ssl, r)) {
            case SSL_ERROR_WANT_READ:  return RETRY;
            case SSL_ERROR_WANT_WRITE: return RETRY;
            default:                   return ERROR;
        }
    }
    return OK;
}