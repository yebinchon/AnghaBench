#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  int /*<<< orphan*/  dual_timestamp ;
struct TYPE_6__ {int /*<<< orphan*/  seqnum; int /*<<< orphan*/  boot_id; } ;
struct TYPE_7__ {TYPE_1__ entry; } ;
typedef  TYPE_2__ Object ;
typedef  int /*<<< orphan*/  JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  DIRECTION_DOWN ; 
 int /*<<< orphan*/  DIRECTION_UP ; 
 struct iovec FUNC0 (char const*) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 scalar_t__ arg_keep ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct iovec*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int,char*,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (char*,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23(void) {
        dual_timestamp ts;
        JournalFile *f;
        struct iovec iovec;
        static const char test[] = "TEST1=1", test2[] = "TEST2=2";
        Object *o;
        uint64_t p;
        sd_id128_t fake_boot_id;
        char t[] = "/var/tmp/journal-XXXXXX";

        FUNC22(LOG_DEBUG);

        FUNC16(t);

        FUNC1(FUNC12(-1, "test.journal", O_RDWR|O_CREAT, 0666, true, (uint64_t) -1, true, NULL, NULL, NULL, NULL, &f) == 0);

        FUNC1(FUNC2(&ts));
        FUNC1(FUNC20(&fake_boot_id) == 0);

        iovec = FUNC0(test);
        FUNC1(FUNC4(f, &ts, NULL, &iovec, 1, NULL, NULL, NULL) == 0);

        iovec = FUNC0(test2);
        FUNC1(FUNC4(f, &ts, NULL, &iovec, 1, NULL, NULL, NULL) == 0);

        iovec = FUNC0(test);
        FUNC1(FUNC4(f, &ts, &fake_boot_id, &iovec, 1, NULL, NULL, NULL) == 0);

#if HAVE_GCRYPT
        journal_file_append_tag(f);
#endif
        FUNC7(f);

        FUNC1(FUNC10(f, 0, DIRECTION_DOWN, &o, &p) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 1);

        FUNC1(FUNC10(f, p, DIRECTION_DOWN, &o, &p) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 2);

        FUNC1(FUNC10(f, p, DIRECTION_DOWN, &o, &p) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 3);
        FUNC1(FUNC19(o->entry.boot_id, fake_boot_id));

        FUNC1(FUNC10(f, p, DIRECTION_DOWN, &o, &p) == 0);

        FUNC1(FUNC10(f, 0, DIRECTION_DOWN, &o, &p) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 1);

        FUNC1(FUNC8(f, test, FUNC21(test), NULL, &p) == 1);
        FUNC1(FUNC11(f, NULL, 0, p, DIRECTION_DOWN, &o, NULL) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 1);

        FUNC1(FUNC11(f, NULL, 0, p, DIRECTION_UP, &o, NULL) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 3);

        FUNC1(FUNC8(f, test2, FUNC21(test2), NULL, &p) == 1);
        FUNC1(FUNC11(f, NULL, 0, p, DIRECTION_UP, &o, NULL) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 2);

        FUNC1(FUNC11(f, NULL, 0, p, DIRECTION_DOWN, &o, NULL) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 2);

        FUNC1(FUNC8(f, "quux", 4, NULL, &p) == 0);

        FUNC1(FUNC9(f, 1, DIRECTION_DOWN, &o, NULL) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 1);

        FUNC1(FUNC9(f, 3, DIRECTION_DOWN, &o, NULL) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 3);

        FUNC1(FUNC9(f, 2, DIRECTION_DOWN, &o, NULL) == 1);
        FUNC1(FUNC14(o->entry.seqnum) == 2);

        FUNC1(FUNC9(f, 10, DIRECTION_DOWN, &o, NULL) == 0);

        FUNC13(&f, true, (uint64_t) -1, true, NULL);
        FUNC13(&f, true, (uint64_t) -1, true, NULL);

        (void) FUNC6(f);

        FUNC15("Done...");

        if (arg_keep)
                FUNC15("Not removing %s", t);
        else {
                FUNC3(".", 3000000, 0, 0, NULL, true);

                FUNC1(FUNC18(t, REMOVE_ROOT|REMOVE_PHYSICAL) >= 0);
        }

        FUNC17("------------------------------------------------------------");
}