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
struct TYPE_5__ {int (* blocking_connect ) (TYPE_2__*,char const*,int,long long) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,char const*,int,long long) ; 

__attribute__((used)) static inline int FUNC1(connection *conn, const char *addr, int port, long long timeout) {
    return conn->type->blocking_connect(conn, addr, port, timeout);
}