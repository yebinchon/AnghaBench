
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mode_t ;
typedef int Set ;
typedef int MMapCache ;
typedef int JournalMetrics ;
typedef int JournalFile ;


 int AT_FDCWD ;
 int EBADMSG ;
 int EBUSY ;
 int EHOSTDOWN ;
 int EIDRM ;
 int EIO ;
 int ENODATA ;
 int EPROTONOSUPPORT ;
 int ESHUTDOWN ;
 int ETXTBSY ;
 int IN_SET (int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int O_ACCMODE ;
 int O_CREAT ;
 int O_RDONLY ;
 int endswith (char const*,char*) ;
 int journal_file_dispose (int ,char const*) ;
 int journal_file_open (int,char const*,int,int ,int,int ,int,int *,int *,int *,int *,int **) ;
 int log_warning_errno (int,char*,char const*) ;

int journal_file_open_reliably(
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

        r = journal_file_open(-1, fname, flags, mode, compress, compress_threshold_bytes, seal, metrics, mmap_cache,
                              deferred_closes, template, ret);
        if (!IN_SET(r,
                    -EBADMSG,
                    -ENODATA,
                    -EHOSTDOWN,
                    -EPROTONOSUPPORT,
                    -EBUSY,
                    -ESHUTDOWN,
                    -EIO,
                    -EIDRM,
                    -ETXTBSY))
                return r;

        if ((flags & O_ACCMODE) == O_RDONLY)
                return r;

        if (!(flags & O_CREAT))
                return r;

        if (!endswith(fname, ".journal"))
                return r;


        log_warning_errno(r, "File %s corrupted or uncleanly shut down, renaming and replacing.", fname);

        r = journal_file_dispose(AT_FDCWD, fname);
        if (r < 0)
                return r;

        return journal_file_open(-1, fname, flags, mode, compress, compress_threshold_bytes, seal, metrics, mmap_cache,
                                 deferred_closes, template, ret);
}
