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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  Set ;
typedef  int /*<<< orphan*/  MMapCache ;
typedef  int /*<<< orphan*/  JournalMetrics ;
typedef  int /*<<< orphan*/  JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  EBADMSG ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EHOSTDOWN ; 
 int /*<<< orphan*/  EIDRM ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENODATA ; 
 int /*<<< orphan*/  EPROTONOSUPPORT ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  ETXTBSY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int O_ACCMODE ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int,char const*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 

int FUNC5(
                const char *fname,
                int flags,
                mode_t mode,
                bool compress,
                uint64_t compress_threshold_bytes,
                bool seal,
                JournalMetrics *metrics,
                MMapCache *mmap_cache,
                Set *deferred_closes,
                JournalFile *template,
                JournalFile **ret) {

        int r;

        r = FUNC3(-1, fname, flags, mode, compress, compress_threshold_bytes, seal, metrics, mmap_cache,
                              deferred_closes, template, ret);
        if (!FUNC0(r,
                    -EBADMSG,           /* Corrupted */
                    -ENODATA,           /* Truncated */
                    -EHOSTDOWN,         /* Other machine */
                    -EPROTONOSUPPORT,   /* Incompatible feature */
                    -EBUSY,             /* Unclean shutdown */
                    -ESHUTDOWN,         /* Already archived */
                    -EIO,               /* IO error, including SIGBUS on mmap */
                    -EIDRM,             /* File has been deleted */
                    -ETXTBSY))          /* File is from the future */
                return r;

        if ((flags & O_ACCMODE) == O_RDONLY)
                return r;

        if (!(flags & O_CREAT))
                return r;

        if (!FUNC1(fname, ".journal"))
                return r;

        /* The file is corrupted. Rotate it away and try it again (but only once) */
        FUNC4(r, "File %s corrupted or uncleanly shut down, renaming and replacing.", fname);

        r = FUNC2(AT_FDCWD, fname);
        if (r < 0)
                return r;

        return FUNC3(-1, fname, flags, mode, compress, compress_threshold_bytes, seal, metrics, mmap_cache,
                                 deferred_closes, template, ret);
}