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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int AUDIO_ES ; 
 int SPU_ES ; 
 int UNKNOWN_ES ; 
 int VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static inline int FUNC2(vlc_object_t *object)
{
    const int cat = FUNC1(object, "imem-cat");
    switch (cat)
    {
    case 1:
        return AUDIO_ES;
    case 2:
        return VIDEO_ES;
    case 3:
        return SPU_ES;
    default:
        FUNC0(object, "Invalid ES category");
        /* fall through */
    case 4:
        return UNKNOWN_ES;
    }
}