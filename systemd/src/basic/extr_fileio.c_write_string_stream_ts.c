
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int WriteStringFileFlags ;
typedef char const FILE ;


 int EIO ;
 scalar_t__ EOF ;
 int WRITE_STRING_FILE_AVOID_NEWLINE ;
 int WRITE_STRING_FILE_DISABLE_BUFFER ;
 int WRITE_STRING_FILE_SYNC ;
 int assert (char const*) ;
 int endswith (char const*,char*) ;
 int errno ;
 scalar_t__ ferror (char const*) ;
 int fflush_and_check (char const*) ;
 int fflush_sync_and_check (char const*) ;
 int fileno (char const*) ;
 scalar_t__ fputc (char,char const*) ;
 scalar_t__ fputs (char const*,char const*) ;
 scalar_t__ futimens (int ,struct timespec*) ;
 char* strjoina (char const*,char*) ;

int write_string_stream_ts(
                FILE *f,
                const char *line,
                WriteStringFileFlags flags,
                struct timespec *ts) {

        bool needs_nl;
        int r;

        assert(f);
        assert(line);

        if (ferror(f))
                return -EIO;

        needs_nl = !(flags & WRITE_STRING_FILE_AVOID_NEWLINE) && !endswith(line, "\n");

        if (needs_nl && (flags & WRITE_STRING_FILE_DISABLE_BUFFER)) {



                line = strjoina(line, "\n");
                needs_nl = 0;
        }

        if (fputs(line, f) == EOF)
                return -errno;

        if (needs_nl)
                if (fputc('\n', f) == EOF)
                        return -errno;

        if (flags & WRITE_STRING_FILE_SYNC)
                r = fflush_sync_and_check(f);
        else
                r = fflush_and_check(f);
        if (r < 0)
                return r;

        if (ts) {
                struct timespec twice[2] = {*ts, *ts};

                if (futimens(fileno(f), twice) < 0)
                        return -errno;
        }

        return 0;
}
