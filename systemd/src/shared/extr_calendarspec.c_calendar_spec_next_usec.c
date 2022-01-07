
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_10__ {int timezone; } ;
struct TYPE_9__ {int return_value; int next; } ;
typedef TYPE_1__ SpecNextResult ;
typedef TYPE_2__ CalendarSpec ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FORK_CLOSE_ALL_FDS ;
 int FORK_DEATHSIG ;
 int FORK_RESET_SIGNALS ;
 int FORK_WAIT ;
 int MAP_ANONYMOUS ;
 TYPE_1__* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int _exit (int ) ;
 int assert (TYPE_2__ const*) ;
 int calendar_spec_next_usec_impl (TYPE_2__ const*,int ,int *) ;
 scalar_t__ isempty (int ) ;
 TYPE_1__* mmap (int *,int,int,int,int,int ) ;
 scalar_t__ munmap (TYPE_1__*,int) ;
 int negative_errno () ;
 int safe_fork (char*,int,int *) ;
 scalar_t__ setenv (char*,char*,int) ;
 char* strjoina (char*,int ) ;
 int tzset () ;

int calendar_spec_next_usec(const CalendarSpec *spec, usec_t usec, usec_t *ret_next) {
        SpecNextResult *shared, tmp;
        int r;

        assert(spec);

        if (isempty(spec->timezone))
                return calendar_spec_next_usec_impl(spec, usec, ret_next);

        shared = mmap(((void*)0), sizeof *shared, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, -1, 0);
        if (shared == MAP_FAILED)
                return negative_errno();

        r = safe_fork("(sd-calendar)", FORK_RESET_SIGNALS|FORK_CLOSE_ALL_FDS|FORK_DEATHSIG|FORK_WAIT, ((void*)0));
        if (r < 0) {
                (void) munmap(shared, sizeof *shared);
                return r;
        }
        if (r == 0) {
                char *colon_tz;


                colon_tz = strjoina(":", spec->timezone);

                if (setenv("TZ", colon_tz, 1) != 0) {
                        shared->return_value = negative_errno();
                        _exit(EXIT_FAILURE);
                }

                tzset();

                shared->return_value = calendar_spec_next_usec_impl(spec, usec, &shared->next);

                _exit(EXIT_SUCCESS);
        }

        tmp = *shared;
        if (munmap(shared, sizeof *shared) < 0)
                return negative_errno();

        if (tmp.return_value == 0 && ret_next)
                *ret_next = tmp.next;

        return tmp.return_value;
}
