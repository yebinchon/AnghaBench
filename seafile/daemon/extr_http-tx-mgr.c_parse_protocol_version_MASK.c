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
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_5__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
struct TYPE_6__ {int version; } ;
typedef  TYPE_2__ CheckProtocolData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5 (const char *rsp_content, int rsp_size, CheckProtocolData *data)
{
    json_t *object = NULL;
    json_error_t jerror;
    int version;

    object = FUNC1 (rsp_content, rsp_size, 0, &jerror);
    if (!object) {
        FUNC4 ("Parse response failed: %s.\n", jerror.text);
        return -1;
    }

    if (FUNC3 (object, "version")) {
        version = FUNC2 (object, "version");
        data->version = version;
    } else {
        FUNC4 ("Response doesn't contain protocol version.\n");
        FUNC0 (object);
        return -1;
    }

    FUNC0 (object);
    return 0;
}