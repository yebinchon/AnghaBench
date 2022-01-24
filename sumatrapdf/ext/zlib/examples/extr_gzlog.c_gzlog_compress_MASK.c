#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uint ;
struct log {scalar_t__ last; scalar_t__ first; size_t stored; int /*<<< orphan*/  path; int /*<<< orphan*/  end; int /*<<< orphan*/  fd; int /*<<< orphan*/  id; } ;
typedef  struct log gzlog ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMPRESS_OP ; 
 size_t DICT ; 
 int /*<<< orphan*/  LOGID ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 size_t FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (struct log*) ; 
 int FUNC5 (struct log*,unsigned char*,size_t) ; 
 scalar_t__ FUNC6 (struct log*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct log*) ; 
 int /*<<< orphan*/  FUNC8 (struct log*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC10 (size_t) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 size_t FUNC12 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (int,...) ; 

int FUNC16(gzlog *logd)
{
    int fd, ret;
    uint block;
    size_t len, next;
    unsigned char *data, buf[5];
    struct log *log = logd;

    /* check arguments */
    if (log == NULL || FUNC13(log->id, LOGID))
        return -3;

    /* see if we lost the lock -- if so get it again and reload the extra
       field information (it probably changed), recover last operation if
       necessary */
    if (FUNC4(log) && FUNC7(log))
        return -1;

    /* create space for uncompressed data */
    len = ((size_t)(log->last - log->first) & ~(((size_t)1 << 10) - 1)) +
          log->stored;
    if ((data = FUNC10(len)) == NULL)
        return -2;

    /* do statement here is just a cheap trick for error handling */
    do {
        /* read in the uncompressed data */
        if (FUNC9(log->fd, log->first - 1, SEEK_SET) < 0)
            break;
        next = 0;
        while (next < len) {
            if (FUNC12(log->fd, buf, 5) != 5)
                break;
            block = FUNC1(buf + 1);
            if (next + block > len ||
                FUNC12(log->fd, (char *)data + next, block) != block)
                break;
            next += block;
        }
        if (FUNC9(log->fd, 0, SEEK_CUR) != log->last + 4 + log->stored)
            break;
        FUNC8(log);

        /* write the uncompressed data to the .add file */
        FUNC14(log->end, ".add");
        fd = FUNC11(log->path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
        if (fd < 0)
            break;
        ret = (size_t)FUNC15(fd, data, len) != len;
        if (ret | FUNC2(fd))
            break;
        FUNC8(log);

        /* write the dictionary for the next compress to the .temp file */
        FUNC14(log->end, ".temp");
        fd = FUNC11(log->path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
        if (fd < 0)
            break;
        next = DICT > len ? len : DICT;
        ret = (size_t)FUNC15(fd, (char *)data + len - next, next) != next;
        if (ret | FUNC2(fd))
            break;
        FUNC8(log);

        /* roll back to compressed data, mark the compress in progress */
        log->last = log->first;
        log->stored = 0;
        if (FUNC6(log, COMPRESS_OP))
            break;
        FUNC0(7);

        /* compress and append the data (clears mark) */
        ret = FUNC5(log, data, len);
        FUNC3(data);
        return ret;
    } while (0);

    /* broke out of do above on i/o error */
    FUNC3(data);
    return -1;
}