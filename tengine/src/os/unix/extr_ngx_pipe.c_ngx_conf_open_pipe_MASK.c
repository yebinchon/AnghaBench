#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int ngx_uint_t ;
struct TYPE_13__ {char* data; scalar_t__ len; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_14__ {int configured; scalar_t__ generation; int type; int pid; char* cmd; TYPE_4__* argv; int /*<<< orphan*/  fd; struct TYPE_14__* open_fd; } ;
typedef  TYPE_2__ ngx_open_pipe_t ;
typedef  int /*<<< orphan*/  ngx_open_file_t ;
typedef  int ngx_int_t ;
struct TYPE_15__ {int /*<<< orphan*/  open_files; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_cycle_t ;
struct TYPE_16__ {int nelts; char** elts; } ;
typedef  TYPE_4__ ngx_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_INVALID_FILE ; 
 int NGX_MAX_PROCESSES ; 
 int NGX_PIPE_READ ; 
 int NGX_PIPE_WRITE ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 
 int ngx_last_pipe ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 scalar_t__ ngx_pipe_generation ; 
 TYPE_2__* ngx_pipes ; 
 char* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

ngx_open_pipe_t *
FUNC7(ngx_cycle_t *cycle, ngx_str_t *cmd, const char *type)
{
    u_char           *cp, *ct, *dup, **argi, **c1, **c2;
    ngx_int_t         same, ti, use;
    ngx_uint_t        i, j, numargs = 0;
    ngx_array_t      *argv_out;

    dup = FUNC5(cycle->pool, cmd->len + 1);
    if (dup == NULL) {
        return NULL;
    }

    (void) FUNC2(dup, cmd->data, cmd->len + 1);

    for (cp = cmd->data; *cp == ' ' || *cp == '\t'; cp++);
    ct = cp;

    if (FUNC6(type, "r") == 0) {
        ti = NGX_PIPE_READ;
    } else if (FUNC6(type, "w") == 0) {
        ti = NGX_PIPE_WRITE;
    } else {
        return NULL;
    }

    numargs = 1;
    while (*ct != '\0') {
        for ( /* void */ ; *ct != '\0'; ct++) {
            if (*ct == ' ' || *ct == '\t') {
                break;
            }
        }

        if (*ct != '\0') {
            ct++;
        }

        numargs++;

        for ( /* void */ ; *ct == ' ' || *ct == '\t'; ct++);
    }

    argv_out = FUNC0(cycle->pool, numargs, sizeof(u_char *));
    if (argv_out == NULL) {
        return NULL;
    }

    for (i = 0; i < (numargs - 1); i++) {
        for ( /* void */ ; *cp == ' ' || *cp == '\t'; cp++);

        for (ct = cp; *cp != '\0'; cp++) {
            if (*cp == ' ' || *cp == '\t') {
                break;
            }
        }

        *cp = '\0';
        argi = (u_char **) FUNC1(argv_out);
        *argi = ct;
        cp++;
    }

    argi = (u_char **) FUNC1(argv_out);
    if (argi == NULL) {
        return NULL;
    }

    *argi = NULL;

    for (i = 0, use = -1; i < ngx_last_pipe; i++) {

        if (!ngx_pipes[i].configured) {
            if (use == -1) {
                use = i;
            }
            continue;
        }

        if (ngx_pipes[i].generation != ngx_pipe_generation) {
            continue;
        }

        if (argv_out->nelts != ngx_pipes[i].argv->nelts) {
            continue;
        }

        if (ti != ngx_pipes[i].type) {
            continue;
        }

        same = 1;
        c1 = argv_out->elts;
        c2 = ngx_pipes[i].argv->elts;
        for (j = 0; j < argv_out->nelts - 1; j++) {
            if (FUNC6(c1[j], c2[j]) != 0) {
                same = 0;
                break;
            }
        }
        if (same) {
            return &ngx_pipes[i];
        }
    }

    if (use == -1) {
        if (ngx_last_pipe < NGX_MAX_PROCESSES) {
            use = ngx_last_pipe++;
        } else {
            return NULL;
        }
    }

    FUNC4(&ngx_pipes[use], sizeof(ngx_open_pipe_t));

    ngx_pipes[use].open_fd = FUNC3(&cycle->open_files);
    if (ngx_pipes[use].open_fd == NULL) {
        return NULL;
    }

    FUNC4(ngx_pipes[use].open_fd, sizeof(ngx_open_file_t));
    ngx_pipes[use].open_fd->fd = NGX_INVALID_FILE;

    ngx_pipes[use].pid = -1;
    ngx_pipes[use].cmd = dup;
    ngx_pipes[use].argv = argv_out;
    ngx_pipes[use].type = ti;
    ngx_pipes[use].generation = ngx_pipe_generation;
    ngx_pipes[use].configured = 1;

    return &ngx_pipes[use];
}