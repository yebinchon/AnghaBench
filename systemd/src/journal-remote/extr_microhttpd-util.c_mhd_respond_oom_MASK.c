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
struct MHD_Connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MHD_HTTP_SERVICE_UNAVAILABLE ; 
 int FUNC0 (struct MHD_Connection*,int /*<<< orphan*/ ,char*) ; 

int FUNC1(struct MHD_Connection *connection) {
        return FUNC0(connection, MHD_HTTP_SERVICE_UNAVAILABLE,  "Out of memory.");
}