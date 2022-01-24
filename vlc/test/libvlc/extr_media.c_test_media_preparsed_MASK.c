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
typedef  int /*<<< orphan*/  vlc_sem_t ;
typedef  int /*<<< orphan*/  libvlc_media_t ;
typedef  scalar_t__ libvlc_media_parsed_status_t ;
typedef  int /*<<< orphan*/  libvlc_media_parse_flag_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;
typedef  int /*<<< orphan*/  libvlc_event_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  libvlc_MediaParsedChanged ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ libvlc_media_parsed_status_done ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  media_parse_ended ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(libvlc_instance_t *vlc, const char *path,
                                 const char *location,
                                 libvlc_media_parse_flag_t parse_flags,
                                 libvlc_media_parsed_status_t i_expected_status)
{
    FUNC9 ("test_media_preparsed: %s, expected: %d\n", path ? path : location,
              i_expected_status);

    libvlc_media_t *media;
    if (path != NULL)
        media = FUNC5 (vlc, path);
    else
        media = FUNC4 (vlc, location);
    FUNC0 (media != NULL);

    vlc_sem_t sem;
    FUNC11 (&sem, 0);

    // Check to see if we are properly receiving the event.
    libvlc_event_manager_t *em = FUNC2 (media);
    FUNC1 (em, libvlc_MediaParsedChanged, media_parse_ended, &sem);

    // Parse the media. This is synchronous.
    int i_ret = FUNC6(media, parse_flags, -1);
    FUNC0(i_ret == 0);

    // Wait for preparsed event
    FUNC12 (&sem);
    FUNC10 (&sem);

    // We are good, now check Elementary Stream info.
    FUNC0 (FUNC3(media) == i_expected_status);
    if (i_expected_status == libvlc_media_parsed_status_done)
        FUNC8(media);

    FUNC7 (media);
}