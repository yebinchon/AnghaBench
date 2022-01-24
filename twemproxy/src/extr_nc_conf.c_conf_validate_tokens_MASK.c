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
struct conf {int /*<<< orphan*/  fname; TYPE_1__ token; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_VVERB ; 
 scalar_t__ NC_ERROR ; 
 scalar_t__ NC_OK ; 
#define  YAML_ALIAS_TOKEN 149 
#define  YAML_ANCHOR_TOKEN 148 
#define  YAML_BLOCK_END_TOKEN 147 
#define  YAML_BLOCK_ENTRY_TOKEN 146 
#define  YAML_BLOCK_MAPPING_START_TOKEN 145 
#define  YAML_BLOCK_SEQUENCE_START_TOKEN 144 
#define  YAML_DOCUMENT_END_TOKEN 143 
#define  YAML_DOCUMENT_START_TOKEN 142 
#define  YAML_FLOW_ENTRY_TOKEN 141 
#define  YAML_FLOW_MAPPING_END_TOKEN 140 
#define  YAML_FLOW_MAPPING_START_TOKEN 139 
#define  YAML_FLOW_SEQUENCE_END_TOKEN 138 
#define  YAML_FLOW_SEQUENCE_START_TOKEN 137 
#define  YAML_KEY_TOKEN 136 
#define  YAML_NO_TOKEN 135 
#define  YAML_SCALAR_TOKEN 134 
#define  YAML_STREAM_END_TOKEN 133 
#define  YAML_STREAM_START_TOKEN 132 
#define  YAML_TAG_DIRECTIVE_TOKEN 131 
#define  YAML_TAG_TOKEN 130 
#define  YAML_VALUE_TOKEN 129 
#define  YAML_VERSION_DIRECTIVE_TOKEN 128 
 int /*<<< orphan*/  FUNC0 (struct conf*) ; 
 scalar_t__ FUNC1 (struct conf*) ; 
 int /*<<< orphan*/  FUNC2 (struct conf*) ; 
 scalar_t__ FUNC3 (struct conf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static rstatus_t
FUNC6(struct conf *cf)
{
    rstatus_t status;
    bool done, error;
    int type;

    status = FUNC3(cf);
    if (status != NC_OK) {
        return status;
    }

    done = false;
    error = false;
    do {
        status = FUNC1(cf);
        if (status != NC_OK) {
            return status;
        }
        type = cf->token.type;

        switch (type) {
        case YAML_NO_TOKEN:
            error = true;
            FUNC5("conf: no token (%d) is disallowed", type);
            break;

        case YAML_VERSION_DIRECTIVE_TOKEN:
            error = true;
            FUNC5("conf: version directive token (%d) is disallowed", type);
            break;

        case YAML_TAG_DIRECTIVE_TOKEN:
            error = true;
            FUNC5("conf: tag directive token (%d) is disallowed", type);
            break;

        case YAML_DOCUMENT_START_TOKEN:
            error = true;
            FUNC5("conf: document start token (%d) is disallowed", type);
            break;

        case YAML_DOCUMENT_END_TOKEN:
            error = true;
            FUNC5("conf: document end token (%d) is disallowed", type);
            break;

        case YAML_FLOW_SEQUENCE_START_TOKEN:
            error = true;
            FUNC5("conf: flow sequence start token (%d) is disallowed", type);
            break;

        case YAML_FLOW_SEQUENCE_END_TOKEN:
            error = true;
            FUNC5("conf: flow sequence end token (%d) is disallowed", type);
            break;

        case YAML_FLOW_MAPPING_START_TOKEN:
            error = true;
            FUNC5("conf: flow mapping start token (%d) is disallowed", type);
            break;

        case YAML_FLOW_MAPPING_END_TOKEN:
            error = true;
            FUNC5("conf: flow mapping end token (%d) is disallowed", type);
            break;

        case YAML_FLOW_ENTRY_TOKEN:
            error = true;
            FUNC5("conf: flow entry token (%d) is disallowed", type);
            break;

        case YAML_ALIAS_TOKEN:
            error = true;
            FUNC5("conf: alias token (%d) is disallowed", type);
            break;

        case YAML_ANCHOR_TOKEN:
            error = true;
            FUNC5("conf: anchor token (%d) is disallowed", type);
            break;

        case YAML_TAG_TOKEN:
            error = true;
            FUNC5("conf: tag token (%d) is disallowed", type);
            break;

        case YAML_BLOCK_SEQUENCE_START_TOKEN:
        case YAML_BLOCK_MAPPING_START_TOKEN:
        case YAML_BLOCK_END_TOKEN:
        case YAML_BLOCK_ENTRY_TOKEN:
            break;

        case YAML_KEY_TOKEN:
        case YAML_VALUE_TOKEN:
        case YAML_SCALAR_TOKEN:
            break;

        case YAML_STREAM_START_TOKEN:
            break;

        case YAML_STREAM_END_TOKEN:
            done = true;
            FUNC4(LOG_VVERB, "conf '%s' has valid tokens", cf->fname);
            break;

        default:
            error = true;
            FUNC5("conf: unknown token (%d) is disallowed", type);
            break;
        }

        FUNC0(cf);
    } while (!done && !error);

    FUNC2(cf);

    return !error ? NC_OK : NC_ERROR;
}