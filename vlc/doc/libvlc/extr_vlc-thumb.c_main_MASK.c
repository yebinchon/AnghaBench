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
typedef  int /*<<< orphan*/  pthread_condattr_t ;
typedef  int /*<<< orphan*/  libvlc_media_t ;
typedef  int /*<<< orphan*/  libvlc_media_player_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**,char const**,char**,char**,int*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  wait ; 

int FUNC20(int argc, const char **argv)
{
    const char *in;
    char *out, *out_with_ext;
    int width;
    pthread_condattr_t attr;
    libvlc_instance_t *libvlc;
    libvlc_media_player_t *mp;
    libvlc_media_t *m;

    /* mandatory to support UTF-8 filenames (provided the locale is well set)*/
    FUNC18(LC_ALL, "");

    FUNC1(argc, argv, &in, &out, &out_with_ext, &width);

    FUNC14(&attr);
    FUNC15(&attr, CLOCK_MONOTONIC);
    FUNC12(&wait, &attr);
    FUNC13(&attr);

    /* starts vlc */
    libvlc = FUNC2();
    FUNC0(libvlc);

    m = FUNC4(libvlc, in);
    FUNC0(m);

    mp = FUNC5(m);
    FUNC0(mp);

    FUNC6(mp);

    /* takes snapshot */
    FUNC17(mp);
    FUNC19(mp, width, out_with_ext);

    FUNC8(mp);

    /* clean up */
    if (out != out_with_ext) {
        FUNC16(out_with_ext, out);
        FUNC3(out_with_ext);
    }
    FUNC3(out);

    FUNC7(mp);
    FUNC9(m);
    FUNC10(libvlc);

    FUNC11(&wait);

    return 0;
}