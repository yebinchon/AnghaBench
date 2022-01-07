
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_ino; int st_mode; int st_size; } ;
typedef int ssize_t ;
typedef int off_t ;
typedef scalar_t__ ag_compression_type ;
struct TYPE_2__ {scalar_t__ stdout_inode; char* query; int query_len; int match_found; scalar_t__ mmap; int path_sep; scalar_t__ print_nonmatching_files; scalar_t__ search_zip_files; int search_binary_files; int literal; scalar_t__ search_all_files; } ;
typedef int * HANDLE ;
typedef int FILE ;


 scalar_t__ AG_NO_COMPRESSION ;
 int CloseHandle (int *) ;
 int * CreateFileMapping (int *,int ,int ,int ,int,int *) ;
 int FILE_SHARE_READ ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageA (int,int *,int ,int ,void*,int ,int *) ;
 int GetLastError () ;
 int INT_MAX ;
 int LocalFree (void*) ;
 int MADV_SEQUENTIAL ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 scalar_t__ MapViewOfFile (int *,int ,int ,int ,int) ;
 int O_RDONLY ;
 int PAGE_READONLY ;
 int POSIX_MADV_SEQUENTIAL ;
 int PROT_READ ;
 int S_IFIFO ;
 int S_ISFIFO (int) ;
 int S_ISREG (int) ;
 int UnmapViewOfFile (char*) ;
 scalar_t__ _get_osfhandle (int) ;
 char* ag_malloc (int) ;
 int ag_min (int,int) ;
 int close (int) ;
 char* decompress (scalar_t__,char*,int,char const*,int*) ;
 int * decompress_open (int,char*,scalar_t__) ;
 int die (char*,char const*,int,int) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int free (char*) ;
 int fstat (int,struct stat*) ;
 scalar_t__ is_binary (char*,int) ;
 scalar_t__ is_zipped (char*,int) ;
 int log_debug (char*,char const*) ;
 int log_err (char*,char const*,...) ;
 int madvise (char*,int,int ) ;
 char* mmap (int ,int,int ,int ,int,int ) ;
 int munmap (char*,int) ;
 int open (char const*,int ) ;
 TYPE_1__ opts ;
 int posix_fadvise (int,int ,int,int ) ;
 int print_cleanup_context () ;
 int print_init_context () ;
 int print_mtx ;
 int print_path (char const*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int read (int,char*,int) ;
 int search_buf (char*,int,char const*) ;
 int search_stream (int *,char const*) ;
 int stat (char const*,struct stat*) ;
 int strerror (int ) ;

void search_file(const char *file_full_path) {
    int fd = -1;
    off_t f_len = 0;
    char *buf = ((void*)0);
    struct stat statbuf;
    int rv = 0;
    int matches_count = -1;
    FILE *fp = ((void*)0);

    rv = stat(file_full_path, &statbuf);
    if (rv != 0) {
        log_err("Skipping %s: Error fstat()ing file.", file_full_path);
        goto cleanup;
    }

    if (opts.stdout_inode != 0 && opts.stdout_inode == statbuf.st_ino) {
        log_debug("Skipping %s: stdout is redirected to it", file_full_path);
        goto cleanup;
    }


    if (!S_ISREG(statbuf.st_mode) && !S_ISFIFO(statbuf.st_mode)) {
        log_err("Skipping %s: Mode %u is not a file.", file_full_path, statbuf.st_mode);
        goto cleanup;
    }

    fd = open(file_full_path, O_RDONLY);
    if (fd < 0) {

        log_err("Skipping %s: Error opening file: %s", file_full_path, strerror(errno));
        goto cleanup;
    }


    rv = fstat(fd, &statbuf);
    if (rv != 0) {
        log_err("Skipping %s: Error fstat()ing file.", file_full_path);
        goto cleanup;
    }

    if (opts.stdout_inode != 0 && opts.stdout_inode == statbuf.st_ino) {
        log_debug("Skipping %s: stdout is redirected to it", file_full_path);
        goto cleanup;
    }


    if (!S_ISREG(statbuf.st_mode) && !S_ISFIFO(statbuf.st_mode)) {
        log_err("Skipping %s: Mode %u is not a file.", file_full_path, statbuf.st_mode);
        goto cleanup;
    }

    print_init_context();

    if (statbuf.st_mode & S_IFIFO) {
        log_debug("%s is a named pipe. stream searching", file_full_path);
        fp = fdopen(fd, "r");
        matches_count = search_stream(fp, file_full_path);
        fclose(fp);
        goto cleanup;
    }

    f_len = statbuf.st_size;

    if (f_len == 0) {
        if (opts.query[0] == '.' && opts.query_len == 1 && !opts.literal && opts.search_all_files) {
            matches_count = search_buf(buf, f_len, file_full_path);
        } else {
            log_debug("Skipping %s: file is empty.", file_full_path);
        }
        goto cleanup;
    }

    if (!opts.literal && f_len > INT_MAX) {
        log_err("Skipping %s: pcre_exec() can't handle files larger than %i bytes.", file_full_path, INT_MAX);
        goto cleanup;
    }
    if (opts.mmap) {
        buf = mmap(0, f_len, PROT_READ, MAP_PRIVATE, fd, 0);
        if (buf == MAP_FAILED) {
            log_err("File %s failed to load: %s.", file_full_path, strerror(errno));
            goto cleanup;
        }





    } else {
        buf = ag_malloc(f_len);

        ssize_t bytes_read = 0;

        if (!opts.search_binary_files) {
            bytes_read += read(fd, buf, ag_min(f_len, 512));

            if (is_binary(buf, f_len)) {
                log_debug("File %s is binary. Skipping...", file_full_path);
                goto cleanup;
            }
        }

        while (bytes_read < f_len) {
            bytes_read += read(fd, buf + bytes_read, f_len);
        }
        if (bytes_read != f_len) {
            die("File %s read(): expected to read %u bytes but read %u", file_full_path, f_len, bytes_read);
        }
    }


    if (opts.search_zip_files) {
        ag_compression_type zip_type = is_zipped(buf, f_len);
        if (zip_type != AG_NO_COMPRESSION) {






            int _buf_len = (int)f_len;
            char *_buf = decompress(zip_type, buf, f_len, file_full_path, &_buf_len);
            if (_buf == ((void*)0) || _buf_len == 0) {
                log_err("Cannot decompress zipped file %s", file_full_path);
                goto cleanup;
            }
            matches_count = search_buf(_buf, _buf_len, file_full_path);
            free(_buf);

            goto cleanup;
        }
    }

    matches_count = search_buf(buf, f_len, file_full_path);

cleanup:

    if (opts.print_nonmatching_files && matches_count == 0) {
        pthread_mutex_lock(&print_mtx);
        print_path(file_full_path, opts.path_sep);
        pthread_mutex_unlock(&print_mtx);
        opts.match_found = 1;
    }

    print_cleanup_context();
    if (buf != ((void*)0)) {



        if (opts.mmap) {
            if (buf != MAP_FAILED) {
                munmap(buf, f_len);
            }
        } else {
            free(buf);
        }

    }
    if (fd != -1) {
        close(fd);
    }
}
