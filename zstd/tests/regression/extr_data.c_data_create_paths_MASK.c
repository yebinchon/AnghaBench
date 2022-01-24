#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * path; } ;
struct TYPE_7__ {int /*<<< orphan*/ * path; } ;
struct TYPE_8__ {TYPE_1__ dict; TYPE_2__ data; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ data_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__* const) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(data_t* const* data, char const* dir) {
    size_t const dirlen = FUNC4(dir);
    FUNC0(data != NULL);
    for (; *data != NULL; ++data) {
        data_t* const datum = *data;
        datum->data.path = FUNC2(dir, "/", datum->name);
        if (datum->data.path == NULL)
            return ENOMEM;
        if (FUNC3(datum)) {
            datum->dict.path = FUNC1(datum->data.path, ".dict");
            if (datum->dict.path == NULL)
                return ENOMEM;
        }
    }
    return 0;
}