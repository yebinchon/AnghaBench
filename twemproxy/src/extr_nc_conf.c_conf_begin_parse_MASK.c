#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int type; } ;
struct conf {scalar_t__ depth; TYPE_1__ event; int /*<<< orphan*/  parsed; scalar_t__ sound; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CONF_MAX_DEPTH ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  YAML_DOCUMENT_START_EVENT 130 
#define  YAML_MAPPING_START_EVENT 129 
#define  YAML_STREAM_START_EVENT 128 
 int /*<<< orphan*/  FUNC2 (struct conf*) ; 
 scalar_t__ FUNC3 (struct conf*) ; 
 scalar_t__ FUNC4 (struct conf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static rstatus_t
FUNC6(struct conf *cf)
{
    rstatus_t status;
    bool done;

    FUNC0(cf->sound && !cf->parsed);
    FUNC0(cf->depth == 0);

    status = FUNC4(cf);
    if (status != NC_OK) {
        return status;
    }

    done = false;
    do {
        status = FUNC3(cf);
        if (status != NC_OK) {
            return status;
        }

        FUNC5(LOG_VVERB, "next begin event %d", cf->event.type);

        switch (cf->event.type) {
        case YAML_STREAM_START_EVENT:
        case YAML_DOCUMENT_START_EVENT:
            break;

        case YAML_MAPPING_START_EVENT:
            FUNC0(cf->depth < CONF_MAX_DEPTH);
            cf->depth++;
            done = true;
            break;

        default:
            FUNC1();
        }

        FUNC2(cf);

    } while (!done);

    return NC_OK;
}