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
typedef  int /*<<< orphan*/  uid_t ;
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_dev; } ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  copy_progress_path_t ;
typedef  int /*<<< orphan*/  copy_progress_bytes_t ;
typedef  int /*<<< orphan*/  CopyFlags ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  COPY_DEPTH_MAX ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int errno ; 
 int FUNC8 (int,char const*,struct stat*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (int,char const*,struct stat*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char const*,struct stat*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char const*,struct stat*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC12 (int,char const*,struct stat*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int,char const*,struct stat*,int /*<<< orphan*/ ) ; 

int FUNC14(
                int fdf,
                const char *from,
                int fdt,
                const char *to,
                uid_t override_uid,
                gid_t override_gid,
                CopyFlags copy_flags,
                copy_progress_path_t progress_path,
                copy_progress_bytes_t progress_bytes,
                void *userdata) {

        struct stat st;

        FUNC7(from);
        FUNC7(to);

        if (FUNC13(fdf, from, &st, AT_SYMLINK_NOFOLLOW) < 0)
                return -errno;

        if (FUNC5(st.st_mode))
                return FUNC11(fdf, from, &st, fdt, to, override_uid, override_gid, copy_flags, progress_bytes, userdata);
        else if (FUNC2(st.st_mode))
                return FUNC8(fdf, from, &st, fdt, to, st.st_dev, COPY_DEPTH_MAX, override_uid, override_gid, copy_flags, NULL, progress_path, progress_bytes, userdata);
        else if (FUNC4(st.st_mode))
                return FUNC12(fdf, from, &st, fdt, to, override_uid, override_gid, copy_flags);
        else if (FUNC3(st.st_mode))
                return FUNC9(fdf, from, &st, fdt, to, override_uid, override_gid, copy_flags);
        else if (FUNC0(st.st_mode) || FUNC1(st.st_mode) || FUNC6(st.st_mode))
                return FUNC10(fdf, from, &st, fdt, to, override_uid, override_gid, copy_flags);
        else
                return -EOPNOTSUPP;
}