#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* type; } ;
typedef  TYPE_2__ connection ;
struct TYPE_5__ {int (* connect ) (TYPE_2__*,char const*,int,char const*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  ConnectionCallbackFunc ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,char const*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(connection *conn, const char *addr, int port, const char *src_addr,
        ConnectionCallbackFunc connect_handler) {
    return conn->type->connect(conn, addr, port, src_addr, connect_handler);
}