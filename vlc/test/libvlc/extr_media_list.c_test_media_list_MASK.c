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
typedef  int /*<<< orphan*/  libvlc_media_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int,char const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14 (const char ** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md, *md1, *md2, *md3, *md4;
    libvlc_media_list_t *ml;
    int ret;

    FUNC13 ("Testing media_list\n");

    vlc = FUNC11 (argc, argv);
    FUNC0 (vlc != NULL);

    ml = FUNC6 (vlc);
    FUNC0 (ml != NULL);

    md1 = FUNC9 (vlc, "/dev/null");
    FUNC0 (md1 != NULL);
    md2 = FUNC9 (vlc, "/dev/null");
    FUNC0 (md2 != NULL);
    md3 = FUNC9 (vlc, "/dev/null");
    FUNC0 (md3 != NULL);

    ret = FUNC1 (ml, md1);
    FUNC0 (!ret);
    ret = FUNC1 (ml, md2);
    FUNC0 (!ret);

    FUNC0( FUNC2 (ml) == 2 );
    FUNC0( FUNC3 (ml, md1) == 0 );
    FUNC0( FUNC3 (ml, md2) == 1 );

    ret = FUNC8 (ml, 0);  /* removing first item */
    FUNC0 (!ret);

    /* test if second item was moved on first place */
    FUNC0( FUNC3 (ml, md2) == 0 );
    ret = FUNC1 (ml, md1); /* add 2 items */
    FUNC0 (!ret);
    ret = FUNC1 (ml, md1);
    FUNC0 (!ret);

    /* there should be 3 pieces */
    FUNC0( FUNC2 (ml) == 3 );

    ret = FUNC4 (ml, md3, 2);
    FUNC0 (!ret);

    /* there should be 4 pieces */
    FUNC0( FUNC2 (ml) == 4 );

    /* test inserting on right place */
    FUNC0( FUNC3 (ml, md3) == 2 );

    /* test right returning descriptor*/
    md = FUNC5 (ml, 0);
    FUNC0(md == md2);
    FUNC10(md);

    md = FUNC5 (ml, 2);
    FUNC0(md == md3);
    FUNC10(md);

    /* test if give errors, when it should */
    /* have 4 items, so index 4 should give error */
    ret = FUNC8 (ml, 4);
    FUNC0 (ret == -1);

    ret = FUNC8 (ml, 100);
    FUNC0 (ret == -1);

    ret = FUNC8 (ml, -1);
    FUNC0 (ret == -1);

    /* getting non valid items */
    libvlc_media_t * p_non_exist =
        FUNC5 (ml, 4);
    FUNC0 (p_non_exist == NULL);

    p_non_exist = FUNC5 (ml, 100);
    FUNC0 (p_non_exist == NULL);

    p_non_exist = FUNC5 (ml, -1);
    FUNC0 (p_non_exist == NULL);

    md4 = FUNC9 (vlc, "/dev/null");
    FUNC0 (md4 != NULL);

    /* try to find non inserted item */
    int i_non_exist = 0;
    i_non_exist = FUNC3 (ml, md4);
    FUNC0 ( i_non_exist == -1 );

    FUNC10 (md1);
    FUNC10 (md2);
    FUNC10 (md3);
    FUNC10 (md4);

    FUNC7 (ml);

    FUNC12 (vlc);
}