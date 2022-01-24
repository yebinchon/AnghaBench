#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_ctime; } ;
struct flock {scalar_t__ l_len; scalar_t__ l_start; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; } ;
struct TYPE_3__ {int last_open_time; int time_now; int interval; int /*<<< orphan*/ * backup; int /*<<< orphan*/  logname; } ;
typedef  TYPE_1__ ngx_pipe_rollback_conf_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  NGX_FILE_OPEN ; 
 int /*<<< orphan*/  NGX_FILE_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct flock*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

void FUNC5(ngx_pipe_rollback_conf_t *rbcf)
{
    int             fd;
    struct flock    lock;
    int             ret;

    struct stat     sb;

    fd = FUNC3(rbcf->logname, NGX_FILE_RDWR, NGX_FILE_OPEN, 0);
    if (fd < 0) {
        //open lock file failed just use now
        rbcf->last_open_time = rbcf->time_now;
        return;
    }

    lock.l_type     = F_WRLCK;
    lock.l_whence   = SEEK_SET;
    lock.l_start    = 0;
    lock.l_len      = 0;

    ret = FUNC1(fd, F_SETLKW, &lock);
    if (ret < 0) {
        FUNC0(fd);
        //lock failed just use now
        rbcf->last_open_time = rbcf->time_now;
        return;
    }

    //check time
    if (rbcf->interval > 0) {
        if (FUNC2(rbcf->backup[0], &sb) == -1) {
            //no backup file ,so need rollback just set 1
            rbcf->last_open_time = 1;
        } else if (sb.st_ctime / rbcf->interval < FUNC4() / rbcf->interval) {
            //need rollback just set 1
            rbcf->last_open_time = 1;
        } else {
            //just no need rollback
            rbcf->last_open_time = rbcf->time_now;
        }
    } else {
        rbcf->last_open_time = rbcf->time_now;
    }

    FUNC0(fd);
}