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
typedef  scalar_t__ usec_t ;
typedef  int /*<<< orphan*/  sd_journal ;
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  int /*<<< orphan*/  OutputMode ;
typedef  int OutputFlags ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ESTALE ; 
 int OUTPUT_FOLLOW ; 
 int OUTPUT_WARN_CUTOFF ; 
 int /*<<< orphan*/  USEC_INFINITY ; 
 int /*<<< orphan*/  _OUTPUT_MODE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

int FUNC12(
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
        bool need_seek = false;
        int warn_cutoff = flags & OUTPUT_WARN_CUTOFF;

        FUNC0(*j);
        FUNC0(mode >= 0);
        FUNC0(mode < _OUTPUT_MODE_MAX);

        if (how_many == (unsigned) -1)
                need_seek = true;
        else {
                /* Seek to end */
                r = FUNC9(j);
                if (r < 0)
                        return FUNC2(r, "Failed to seek to tail: %m");

                r = FUNC8(j, how_many);
                if (r < 0)
                        return FUNC2(r, "Failed to skip previous: %m");
        }

        for (;;) {
                for (;;) {
                        usec_t usec;

                        if (need_seek) {
                                r = FUNC7(j);
                                if (r < 0)
                                        return FUNC2(r, "Failed to iterate through journal: %m");
                        }

                        if (r == 0)
                                break;

                        need_seek = true;

                        if (not_before > 0) {
                                r = FUNC6(j, &usec, NULL);

                                /* -ESTALE is returned if the
                                   timestamp is not from this boot */
                                if (r == -ESTALE)
                                        continue;
                                else if (r < 0)
                                        return FUNC2(r, "Failed to get journal time: %m");

                                if (usec < not_before)
                                        continue;
                        }

                        line++;
                        FUNC3(f, &flags);

                        r = FUNC11(f, j, mode, n_columns, flags, NULL, NULL, ellipsized);
                        if (r < 0)
                                return r;
                }

                if (warn_cutoff && line < how_many && not_before > 0) {
                        sd_id128_t boot_id;
                        usec_t cutoff = 0;

                        /* Check whether the cutoff line is too early */

                        r = FUNC4(&boot_id);
                        if (r < 0)
                                return FUNC2(r, "Failed to get boot id: %m");

                        r = FUNC5(j, boot_id, &cutoff, NULL);
                        if (r < 0)
                                return FUNC2(r, "Failed to get journal cutoff time: %m");

                        if (r > 0 && not_before < cutoff) {
                                FUNC3(f, &flags);
                                FUNC1(f, "Warning: Journal has been rotated since unit was started. Log output is incomplete or unavailable.\n");
                        }

                        warn_cutoff = false;
                }

                if (!(flags & OUTPUT_FOLLOW))
                        break;

                r = FUNC10(j, USEC_INFINITY);
                if (r < 0)
                        return FUNC2(r, "Failed to wait for journal: %m");

        }

        return 0;
}