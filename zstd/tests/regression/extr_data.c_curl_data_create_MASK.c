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
typedef  scalar_t__ data_type_t ;
struct TYPE_5__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ data_resource_t ;
struct TYPE_6__ {void* error; int /*<<< orphan*/ * file; int /*<<< orphan*/  xxhash64; } ;
typedef  TYPE_2__ curl_data_t ;

/* Variables and functions */
 void* ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ data_type_file ; 
 void* errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  g_data_dir ; 
 void* FUNC5 (char*,char*) ; 

__attribute__((used)) static curl_data_t FUNC6(
    data_resource_t const* resource,
    data_type_t type) {
    curl_data_t cdata = {};

    FUNC1(&cdata.xxhash64, 0);

    FUNC2(FUNC0(g_data_dir));

    if (type == data_type_file) {
        /* Decompress the resource and store to the path. */
        char* cmd = FUNC3("zstd -dqfo '", resource->path, "'");
        if (cmd == NULL) {
            cdata.error = ENOMEM;
            return cdata;
        }
        cdata.file = FUNC5(cmd, "w");
        FUNC4(cmd);
    } else {
        /* Decompress and extract the resource to the cache directory. */
        char* cmd = FUNC3("zstd -dc | tar -x -C '", g_data_dir, "'");
        if (cmd == NULL) {
            cdata.error = ENOMEM;
            return cdata;
        }
        cdata.file = FUNC5(cmd, "w");
        FUNC4(cmd);
    }
    if (cdata.file == NULL) {
        cdata.error = errno;
    }

    return cdata;
}