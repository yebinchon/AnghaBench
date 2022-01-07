
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int result_t ;
struct TYPE_13__ {size_t total_size; } ;
typedef TYPE_4__ result_data_t ;
typedef int out ;
struct TYPE_14__ {TYPE_3__* data; } ;
typedef TYPE_5__ method_state_t ;
struct TYPE_15__ {char* cli_args; scalar_t__ no_pledged_src_size; scalar_t__ use_dictionary; } ;
typedef TYPE_6__ config_t ;
typedef int cmd ;
struct TYPE_11__ {char* path; } ;
struct TYPE_10__ {int path; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ dict; TYPE_1__ data; } ;
typedef int FILE ;


 scalar_t__ data_type_dir ;
 scalar_t__ ferror (int *) ;
 int fprintf (int ,char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 char* g_zstdcli ;
 scalar_t__ pclose (int *) ;
 int * popen (char*,char*) ;
 int result_data (TYPE_4__ const) ;
 int result_error (int ) ;
 int result_error_compression_error ;
 int result_error_skip ;
 int result_error_system_error ;
 size_t snprintf (char*,int,char*,char*,char*,char*,char*,char*,char*,int ) ;
 int stderr ;

__attribute__((used)) static result_t cli_compress(method_state_t* state, config_t const* config) {
    if (config->cli_args == ((void*)0))
        return result_error(result_error_skip);


    if (state->data->type == data_type_dir && config->no_pledged_src_size)
        return result_error(result_error_skip);

    if (g_zstdcli == ((void*)0))
        return result_error(result_error_system_error);


    char cmd[1024];
    size_t const cmd_size = snprintf(
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
        fprintf(stderr, "command too large: %s\n", cmd);
        return result_error(result_error_system_error);
    }
    FILE* zstd = popen(cmd, "r");
    if (zstd == ((void*)0)) {
        fprintf(stderr, "failed to popen command: %s\n", cmd);
        return result_error(result_error_system_error);
    }

    char out[4096];
    size_t total_size = 0;
    while (1) {
        size_t const size = fread(out, 1, sizeof(out), zstd);
        total_size += size;
        if (size != sizeof(out))
            break;
    }
    if (ferror(zstd) || pclose(zstd) != 0) {
        fprintf(stderr, "zstd failed with command: %s\n", cmd);
        return result_error(result_error_compression_error);
    }

    result_data_t const data = {.total_size = total_size};
    return result_data(data);
}
