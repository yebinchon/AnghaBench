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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*,unsigned int) ; 
 char* FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(sd_device * const *_a, sd_device * const *_b) {
        sd_device *a = *(sd_device **)_a, *b = *(sd_device **)_b;
        const char *devpath_a, *devpath_b, *sound_a;
        bool delay_a, delay_b;
        int r;

        FUNC2(FUNC3(a, &devpath_a) >= 0);
        FUNC2(FUNC3(b, &devpath_b) >= 0);

        sound_a = FUNC8(devpath_a, "/sound/card");
        if (sound_a) {
                /* For sound cards the control device must be enumerated last to
                 * make sure it's the final device node that gets ACLs applied.
                 * Applications rely on this fact and use ACL changes on the
                 * control node as an indicator that the ACL change of the
                 * entire sound card completed. The kernel makes this guarantee
                 * when creating those devices, and hence we should too when
                 * enumerating them. */
                sound_a += FUNC1("/sound/card");
                sound_a = FUNC5(sound_a, '/');

                if (sound_a) {
                        unsigned prefix_len;

                        prefix_len = sound_a - devpath_a;

                        if (FUNC7(devpath_a, devpath_b, prefix_len) == 0) {
                                const char *sound_b;

                                sound_b = devpath_b + prefix_len;

                                if (FUNC4(sound_a, "/controlC") &&
                                    !FUNC4(sound_b, "/contolC"))
                                        return 1;

                                if (!FUNC4(sound_a, "/controlC") &&
                                    FUNC4(sound_b, "/controlC"))
                                        return -1;
                        }
                }
        }

        /* md and dm devices are enumerated after all other devices */
        delay_a = FUNC8(devpath_a, "/block/md") || FUNC8(devpath_a, "/block/dm-");
        delay_b = FUNC8(devpath_b, "/block/md") || FUNC8(devpath_b, "/block/dm-");
        r = FUNC0(delay_a, delay_b);
        if (r != 0)
                return r;

        return FUNC6(devpath_a, devpath_b);
}