#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  result_t ;
struct TYPE_13__ {size_t total_size; } ;
typedef  TYPE_4__ result_data_t ;
typedef  int /*<<< orphan*/  out ;
struct TYPE_14__ {TYPE_3__* data; } ;
typedef  TYPE_5__ method_state_t ;
struct TYPE_15__ {char* cli_args; scalar_t__ no_pledged_src_size; scalar_t__ use_dictionary; } ;
typedef  TYPE_6__ config_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_11__ {char* path; } ;
struct TYPE_10__ {int /*<<< orphan*/  path; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ dict; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ data_type_dir ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* g_zstdcli ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__ const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  result_error_compression_error ; 
 int /*<<< orphan*/  result_error_skip ; 
 int /*<<< orphan*/  result_error_system_error ; 
 size_t FUNC7 (char*,int,char*,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static result_t FUNC8(method_state_t* state, config_t const* config) {
    if (config->cli_args == NULL)
        return FUNC6(result_error_skip);

    /* We don't support no pledged source size with directories. Too slow. */
    if (state->data->type == data_type_dir && config->no_pledged_src_size)
        return FUNC6(result_error_skip);

    if (g_zstdcli == NULL)
        return FUNC6(result_error_system_error);

    /* '<zstd>' -cqr <args> [-D '<dict>'] '<file/dir>' */
    char cmd[1024];
    size_t const cmd_size = FUNC7(
        cmd,
        sizeof(cmd),
        "'%s' -cqr %s %s%s%s %s '%s'",
        g_zstdcli,
        config->cli_args,
        config->use_dictionary ? "-D '" : "",
        config->use_dictionary ? state->data->dict.path : "",
        config->use_dictionary ? "'" : "",
        config->no_pledged_src_size ? "<" : "",
        state->data->data.path);
    if (cmd_size >= sizeof(cmd)) {
        FUNC1(stderr, "command too large: %s\n", cmd);
        return FUNC6(result_error_system_error);
    }
    FILE* zstd = FUNC4(cmd, "r");
    if (zstd == NULL) {
        FUNC1(stderr, "failed to popen command: %s\n", cmd);
        return FUNC6(result_error_system_error);
    }

    char out[4096];
    size_t total_size = 0;
    while (1) {
        size_t const size = FUNC2(out, 1, sizeof(out), zstd);
        total_size += size;
        if (size != sizeof(out))
            break;
    }
    if (FUNC0(zstd) || FUNC3(zstd) != 0) {
        FUNC1(stderr, "zstd failed with command: %s\n", cmd);
        return FUNC6(result_error_compression_error);
    }

    result_data_t const data = {.total_size = total_size};
    return FUNC5(data);
}