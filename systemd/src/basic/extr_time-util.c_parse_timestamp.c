
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_5__ {int return_value; int usec; } ;
typedef TYPE_1__ ParseTimestampResult ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FORK_CLOSE_ALL_FDS ;
 int FORK_DEATHSIG ;
 int FORK_RESET_SIGNALS ;
 int FORK_WAIT ;
 int LOG_DEBUG ;
 int MAP_ANONYMOUS ;
 TYPE_1__* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int STR_IN_SET (char*,int ,int ) ;
 int _exit (int ) ;
 scalar_t__ endswith_no_case (char const*,char*) ;
 TYPE_1__* mmap (int *,int,int,int,int,int ) ;
 scalar_t__ munmap (TYPE_1__*,int) ;
 int negative_errno () ;
 int parse_timestamp_impl (char const*,int *,int) ;
 int safe_fork (char*,int,int *) ;
 scalar_t__ setenv (char*,char*,int) ;
 char* strjoina (char*,char*) ;
 char* strndupa (char const*,int) ;
 char* strrchr (char const*,char) ;
 scalar_t__ timezone_is_valid (char*,int ) ;
 int * tzname ;
 int tzset () ;

int parse_timestamp(const char *t, usec_t *usec) {
        char *last_space, *tz = ((void*)0);
        ParseTimestampResult *shared, tmp;
        int r;

        last_space = strrchr(t, ' ');
        if (last_space != ((void*)0) && timezone_is_valid(last_space + 1, LOG_DEBUG))
                tz = last_space + 1;

        if (!tz || endswith_no_case(t, " UTC"))
                return parse_timestamp_impl(t, usec, 0);

        shared = mmap(((void*)0), sizeof *shared, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, -1, 0);
        if (shared == MAP_FAILED)
                return negative_errno();

        r = safe_fork("(sd-timestamp)", FORK_RESET_SIGNALS|FORK_CLOSE_ALL_FDS|FORK_DEATHSIG|FORK_WAIT, ((void*)0));
        if (r < 0) {
                (void) munmap(shared, sizeof *shared);
                return r;
        }
        if (r == 0) {
                bool with_tz = 1;
                char *colon_tz;


                colon_tz = strjoina(":", tz);

                if (setenv("TZ", colon_tz, 1) != 0) {
                        shared->return_value = negative_errno();
                        _exit(EXIT_FAILURE);
                }

                tzset();



                with_tz = !STR_IN_SET(tz, tzname[0], tzname[1]);


                if (with_tz)
                        t = strndupa(t, last_space - t);

                shared->return_value = parse_timestamp_impl(t, &shared->usec, with_tz);

                _exit(EXIT_SUCCESS);
        }

        tmp = *shared;
        if (munmap(shared, sizeof *shared) != 0)
                return negative_errno();

        if (tmp.return_value == 0 && usec)
                *usec = tmp.usec;

        return tmp.return_value;
}
