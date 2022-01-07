
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef int sd_journal ;
typedef int sd_id128_t ;
typedef int OutputMode ;
typedef int OutputFlags ;
typedef int FILE ;


 int ESTALE ;
 int OUTPUT_FOLLOW ;
 int OUTPUT_WARN_CUTOFF ;
 int USEC_INFINITY ;
 int _OUTPUT_MODE_MAX ;
 int assert (int) ;
 int fprintf (int *,char*) ;
 int log_error_errno (int,char*) ;
 int maybe_print_begin_newline (int *,int*) ;
 int sd_id128_get_boot (int *) ;
 int sd_journal_get_cutoff_monotonic_usec (int *,int ,scalar_t__*,int *) ;
 int sd_journal_get_monotonic_usec (int *,scalar_t__*,int *) ;
 int sd_journal_next (int *) ;
 int sd_journal_previous_skip (int *,unsigned int) ;
 int sd_journal_seek_tail (int *) ;
 int sd_journal_wait (int *,int ) ;
 int show_journal_entry (int *,int *,int ,unsigned int,int,int *,int *,int*) ;

int show_journal(
                FILE *f,
                sd_journal *j,
                OutputMode mode,
                unsigned n_columns,
                usec_t not_before,
                unsigned how_many,
                OutputFlags flags,
                bool *ellipsized) {

        int r;
        unsigned line = 0;
        bool need_seek = 0;
        int warn_cutoff = flags & OUTPUT_WARN_CUTOFF;

        assert(j);
        assert(mode >= 0);
        assert(mode < _OUTPUT_MODE_MAX);

        if (how_many == (unsigned) -1)
                need_seek = 1;
        else {

                r = sd_journal_seek_tail(j);
                if (r < 0)
                        return log_error_errno(r, "Failed to seek to tail: %m");

                r = sd_journal_previous_skip(j, how_many);
                if (r < 0)
                        return log_error_errno(r, "Failed to skip previous: %m");
        }

        for (;;) {
                for (;;) {
                        usec_t usec;

                        if (need_seek) {
                                r = sd_journal_next(j);
                                if (r < 0)
                                        return log_error_errno(r, "Failed to iterate through journal: %m");
                        }

                        if (r == 0)
                                break;

                        need_seek = 1;

                        if (not_before > 0) {
                                r = sd_journal_get_monotonic_usec(j, &usec, ((void*)0));



                                if (r == -ESTALE)
                                        continue;
                                else if (r < 0)
                                        return log_error_errno(r, "Failed to get journal time: %m");

                                if (usec < not_before)
                                        continue;
                        }

                        line++;
                        maybe_print_begin_newline(f, &flags);

                        r = show_journal_entry(f, j, mode, n_columns, flags, ((void*)0), ((void*)0), ellipsized);
                        if (r < 0)
                                return r;
                }

                if (warn_cutoff && line < how_many && not_before > 0) {
                        sd_id128_t boot_id;
                        usec_t cutoff = 0;



                        r = sd_id128_get_boot(&boot_id);
                        if (r < 0)
                                return log_error_errno(r, "Failed to get boot id: %m");

                        r = sd_journal_get_cutoff_monotonic_usec(j, boot_id, &cutoff, ((void*)0));
                        if (r < 0)
                                return log_error_errno(r, "Failed to get journal cutoff time: %m");

                        if (r > 0 && not_before < cutoff) {
                                maybe_print_begin_newline(f, &flags);
                                fprintf(f, "Warning: Journal has been rotated since unit was started. Log output is incomplete or unavailable.\n");
                        }

                        warn_cutoff = 0;
                }

                if (!(flags & OUTPUT_FOLLOW))
                        break;

                r = sd_journal_wait(j, USEC_INFINITY);
                if (r < 0)
                        return log_error_errno(r, "Failed to wait for journal: %m");

        }

        return 0;
}
