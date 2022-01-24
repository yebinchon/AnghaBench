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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  int /*<<< orphan*/  CDCFileDescriptor ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

int FUNC4(const char *filename,
                       CDCFileDescriptor *file_descr,
                       SeafileCrypt *crypt,
                       gboolean write_data)
{
    int fd_src = FUNC2 (filename, O_RDONLY | O_BINARY);
    if (fd_src < 0) {
        FUNC3 ("CDC: failed to open %s.\n", filename);
        return -1;
    }

    int ret = FUNC1 (fd_src, file_descr, crypt, write_data);
    FUNC0 (fd_src);
    return ret;
}