#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_ino; int st_mode; int st_size; } ;
typedef  int ssize_t ;
typedef  int off_t ;
typedef  scalar_t__ ag_compression_type ;
struct TYPE_2__ {scalar_t__ stdout_inode; char* query; int query_len; int match_found; scalar_t__ mmap; int /*<<< orphan*/  path_sep; scalar_t__ print_nonmatching_files; scalar_t__ search_zip_files; int /*<<< orphan*/  search_binary_files; int /*<<< orphan*/  literal; scalar_t__ search_all_files; } ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ AG_NO_COMPRESSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  MADV_SEQUENTIAL ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  POSIX_MADV_SEQUENTIAL ; 
 int /*<<< orphan*/  PROT_READ ; 
 int S_IFIFO ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 char* FUNC10 (int) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 char* FUNC13 (scalar_t__,char*,int,char const*,int*) ; 
 int /*<<< orphan*/ * FUNC14 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int,struct stat*) ; 
 scalar_t__ FUNC20 (char*,int) ; 
 scalar_t__ FUNC21 (char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC25 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,int) ; 
 int FUNC27 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__ opts ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  print_mtx ; 
 int /*<<< orphan*/  FUNC31 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int FUNC34 (int,char*,int) ; 
 int FUNC35 (char*,int,char const*) ; 
 int FUNC36 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC37 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 

void FUNC39(const char *file_full_path) {
    int fd = -1;
    off_t f_len = 0;
    char *buf = NULL;
    struct stat statbuf;
    int rv = 0;
    int matches_count = -1;
    FILE *fp = NULL;

    rv = FUNC37(file_full_path, &statbuf);
    if (rv != 0) {
        FUNC23("Skipping %s: Error fstat()ing file.", file_full_path);
        goto cleanup;
    }

    if (opts.stdout_inode != 0 && opts.stdout_inode == statbuf.st_ino) {
        FUNC22("Skipping %s: stdout is redirected to it", file_full_path);
        goto cleanup;
    }

    // handling only regular files and FIFOs
    if (!FUNC7(statbuf.st_mode) && !FUNC6(statbuf.st_mode)) {
        FUNC23("Skipping %s: Mode %u is not a file.", file_full_path, statbuf.st_mode);
        goto cleanup;
    }

    fd = FUNC27(file_full_path, O_RDONLY);
    if (fd < 0) {
        /* XXXX: strerror is not thread-safe */
        FUNC23("Skipping %s: Error opening file: %s", file_full_path, FUNC38(errno));
        goto cleanup;
    }

    // repeating stat check with file handle to prevent TOCTOU issue
    rv = FUNC19(fd, &statbuf);
    if (rv != 0) {
        FUNC23("Skipping %s: Error fstat()ing file.", file_full_path);
        goto cleanup;
    }

    if (opts.stdout_inode != 0 && opts.stdout_inode == statbuf.st_ino) {
        FUNC22("Skipping %s: stdout is redirected to it", file_full_path);
        goto cleanup;
    }

    // handling only regular files and FIFOs
    if (!FUNC7(statbuf.st_mode) && !FUNC6(statbuf.st_mode)) {
        FUNC23("Skipping %s: Mode %u is not a file.", file_full_path, statbuf.st_mode);
        goto cleanup;
    }

    FUNC30();

    if (statbuf.st_mode & S_IFIFO) {
        FUNC22("%s is a named pipe. stream searching", file_full_path);
        fp = FUNC17(fd, "r");
        matches_count = FUNC36(fp, file_full_path);
        FUNC16(fp);
        goto cleanup;
    }

    f_len = statbuf.st_size;

    if (f_len == 0) {
        if (opts.query[0] == '.' && opts.query_len == 1 && !opts.literal && opts.search_all_files) {
            matches_count = FUNC35(buf, f_len, file_full_path);
        } else {
            FUNC22("Skipping %s: file is empty.", file_full_path);
        }
        goto cleanup;
    }

    if (!opts.literal && f_len > INT_MAX) {
        FUNC23("Skipping %s: pcre_exec() can't handle files larger than %i bytes.", file_full_path, INT_MAX);
        goto cleanup;
    }

#ifdef _WIN32
    {
        HANDLE hmmap = CreateFileMapping(
            (HANDLE)_get_osfhandle(fd), 0, PAGE_READONLY, 0, f_len, NULL);
        buf = (char *)MapViewOfFile(hmmap, FILE_SHARE_READ, 0, 0, f_len);
        if (hmmap != NULL)
            CloseHandle(hmmap);
    }
    if (buf == NULL) {
        FormatMessageA(
            FORMAT_MESSAGE_ALLOCATE_BUFFER |
                FORMAT_MESSAGE_FROM_SYSTEM |
                FORMAT_MESSAGE_IGNORE_INSERTS,
            NULL, GetLastError(), 0, (void *)&buf, 0, NULL);
        log_err("File %s failed to load: %s.", file_full_path, buf);
        LocalFree((void *)buf);
        goto cleanup;
    }
#else

    if (opts.mmap) {
        buf = FUNC25(0, f_len, PROT_READ, MAP_PRIVATE, fd, 0);
        if (buf == MAP_FAILED) {
            FUNC23("File %s failed to load: %s.", file_full_path, FUNC38(errno));
            goto cleanup;
        }
#if HAVE_MADVISE
        madvise(buf, f_len, MADV_SEQUENTIAL);
#elif HAVE_POSIX_FADVISE
        posix_fadvise(fd, 0, f_len, POSIX_MADV_SEQUENTIAL);
#endif
    } else {
        buf = FUNC10(f_len);

        ssize_t bytes_read = 0;

        if (!opts.search_binary_files) {
            bytes_read += FUNC34(fd, buf, FUNC11(f_len, 512));
            // Optimization: If skipping binary files, don't read the whole buffer before checking if binary or not.
            if (FUNC20(buf, f_len)) {
                FUNC22("File %s is binary. Skipping...", file_full_path);
                goto cleanup;
            }
        }

        while (bytes_read < f_len) {
            bytes_read += FUNC34(fd, buf + bytes_read, f_len);
        }
        if (bytes_read != f_len) {
            FUNC15("File %s read(): expected to read %u bytes but read %u", file_full_path, f_len, bytes_read);
        }
    }
#endif

    if (opts.search_zip_files) {
        ag_compression_type zip_type = FUNC21(buf, f_len);
        if (zip_type != AG_NO_COMPRESSION) {
#if HAVE_FOPENCOOKIE
            log_debug("%s is a compressed file. stream searching", file_full_path);
            fp = decompress_open(fd, "r", zip_type);
            matches_count = search_stream(fp, file_full_path);
            fclose(fp);
#else
            int _buf_len = (int)f_len;
            char *_buf = FUNC13(zip_type, buf, f_len, file_full_path, &_buf_len);
            if (_buf == NULL || _buf_len == 0) {
                FUNC23("Cannot decompress zipped file %s", file_full_path);
                goto cleanup;
            }
            matches_count = FUNC35(_buf, _buf_len, file_full_path);
            FUNC18(_buf);
#endif
            goto cleanup;
        }
    }

    matches_count = FUNC35(buf, f_len, file_full_path);

cleanup:

    if (opts.print_nonmatching_files && matches_count == 0) {
        FUNC32(&print_mtx);
        FUNC31(file_full_path, opts.path_sep);
        FUNC33(&print_mtx);
        opts.match_found = 1;
    }

    FUNC29();
    if (buf != NULL) {
#ifdef _WIN32
        UnmapViewOfFile(buf);
#else
        if (opts.mmap) {
            if (buf != MAP_FAILED) {
                FUNC26(buf, f_len);
            }
        } else {
            FUNC18(buf);
        }
#endif
    }
    if (fd != -1) {
        FUNC12(fd);
    }
}