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
typedef  int /*<<< orphan*/  const vlc_mutex_t ;
typedef  int /*<<< orphan*/  locks ;

/* Variables and functions */
 int VLC_MAX_MUTEX ; 
#define  VLC_STATIC_MUTEX 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

void FUNC4 (unsigned n, bool acquire)
{
    static vlc_mutex_t locks[] = {
        VLC_STATIC_MUTEX,
        VLC_STATIC_MUTEX,
        VLC_STATIC_MUTEX,
        VLC_STATIC_MUTEX,
#ifdef _WIN32
        VLC_STATIC_MUTEX, // For MTA holder
#endif
    };
    FUNC1 (VLC_MAX_MUTEX == (sizeof (locks) / sizeof (locks[0])),
                   "Wrong number of global mutexes");
    FUNC0 (n < (sizeof (locks) / sizeof (locks[0])));

    vlc_mutex_t *lock = locks + n;
    if (acquire)
        FUNC2 (lock);
    else
        FUNC3 (lock);
}