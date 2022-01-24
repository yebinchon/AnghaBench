#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct flock {scalar_t__ l_len; scalar_t__ l_start; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; } ;
struct TYPE_7__ {int interval; scalar_t__ log_max_size; int backup_num; int /*<<< orphan*/  logname; int /*<<< orphan*/ * backup; int /*<<< orphan*/  time_now; } ;
typedef  TYPE_1__ ngx_pipe_rollback_conf_t ;
typedef  int ngx_int_t ;
struct TYPE_8__ {int st_ctime; scalar_t__ st_size; } ;
typedef  TYPE_2__ ngx_file_info_t ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  NGX_FILE_OPEN ; 
 int /*<<< orphan*/  NGX_FILE_RDWR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

void
FUNC7(ngx_cycle_t *cycle, ngx_pipe_rollback_conf_t *rbcf)
{
    int             fd;
    struct flock    lock;
    int             ret;
    ngx_int_t       i;
    ngx_file_info_t sb;
    ngx_int_t       need_do = 0;

    fd = FUNC4(rbcf->logname, NGX_FILE_RDWR, NGX_FILE_OPEN, 0);
    if (fd < 0) {
        //open lock file failed just no need rollback
        return;
    }

    lock.l_type     = F_WRLCK;
    lock.l_whence   = SEEK_SET;
    lock.l_start    = 0;
    lock.l_len      = 0;

    ret = FUNC0(fd, F_SETLKW, &lock);
    if (ret < 0) {
        FUNC1(fd);
        //lock failed just no need rollback
        return;
    }

    //check time
    if (rbcf->interval >= 0) {
        if (FUNC2(rbcf->backup[0], &sb) == -1) {
            need_do = 1;
            FUNC3(NGX_LOG_INFO, cycle->log, 0,
                          "need rollback [%s]: cannot open backup", rbcf->logname);

        } else if (sb.st_ctime / rbcf->interval < FUNC6() / rbcf->interval) {
            need_do = 1;
            FUNC3(NGX_LOG_INFO, cycle->log, 0,
                          "need rollback [%s]: time on [%d] [%d]",
                          rbcf->logname, sb.st_ctime, rbcf->time_now);

        } else {
            FUNC3(NGX_LOG_INFO, cycle->log, 0,
                          "no need rollback [%s]: time not on [%d] [%d]",
                          rbcf->logname, sb.st_ctime, rbcf->time_now);
        }

    } else {
        FUNC3(NGX_LOG_INFO, cycle->log, 0,
                      "no need check rollback [%s] time: no interval", rbcf->logname);
    }

    //check size
    if (rbcf->log_max_size > 0) {
        if (FUNC2(rbcf->logname, &sb) == 0 && (sb.st_size >= rbcf->log_max_size)) {
            need_do = 1;
            FUNC3(NGX_LOG_INFO, cycle->log, 0,
                          "need rollback [%s]: size on [%d]", rbcf->logname, sb.st_size);

        } else {
            FUNC3(NGX_LOG_INFO, cycle->log, 0,
                          "no need rollback [%s]: size not on", rbcf->logname);
        }

    } else {
        FUNC3(NGX_LOG_INFO, cycle->log, 0,
                      "no need check rollback [%s] size: no max size", rbcf->logname);
    }

    if (need_do) {
        for (i = 1; i < rbcf->backup_num; i++) {
            FUNC5(rbcf->backup[rbcf->backup_num - i - 1],
                   rbcf->backup[rbcf->backup_num - i]);
        }
        if (FUNC5(rbcf->logname, rbcf->backup[0]) < 0) {
            FUNC3(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "rname %s to %s failed", rbcf->logname, rbcf->backup[0]);
        } else {
            FUNC3(NGX_LOG_WARN, cycle->log, 0,
                          "rollback [%s] success", rbcf->logname);
        }
    }
    FUNC1(fd);
}