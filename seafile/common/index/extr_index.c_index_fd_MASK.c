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
typedef  scalar_t__ uint64_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_3__ {scalar_t__ st_size; } ;
typedef  TYPE_1__ SeafStat ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ SMALL_FILE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (unsigned char*,void*,scalar_t__,int,char const*) ; 
 char* FUNC3 (scalar_t__) ; 
 void* FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 
 scalar_t__ FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(unsigned char *sha1, int fd, SeafStat *st,
             enum object_type type, const char *path)
{
    int ret;
    uint64_t size = st->st_size;

    if (!size) {
        ret = FUNC2(sha1, NULL, size, type, path);
    } else if (size <= SMALL_FILE_SIZE) {
        char *buf = FUNC3(size);
        if (size == FUNC6(fd, buf, size)) {
            ret = FUNC2(sha1, buf, size, type, path);
        } else {
            FUNC7("short read %s\n", FUNC8(errno));
            ret = -1;
        }
        FUNC1(buf);
    } else {
        void *buf = FUNC4(NULL, size, PROT_READ, MAP_PRIVATE, fd, 0);
        ret = FUNC2(sha1, buf, size, type, path);
        FUNC5(buf, size);
    }
    FUNC0(fd);
    return ret;
}