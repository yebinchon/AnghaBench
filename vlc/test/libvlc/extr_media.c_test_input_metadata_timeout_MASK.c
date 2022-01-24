#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_sem_t ;
struct input_preparser_callbacks_t {int /*<<< orphan*/  on_preparse_ended; } ;
struct TYPE_5__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_1__ libvlc_instance_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_LOCAL ; 
 int META_REQUEST_OPTION_FETCH_LOCAL ; 
 int META_REQUEST_OPTION_SCOPE_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  input_item_preparse_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct input_preparser_callbacks_t const*,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(libvlc_instance_t *vlc, int timeout,
                                        int wait_and_cancel)
{
    FUNC8 ("test_input_metadata_timeout: timeout: %d, wait_and_cancel: %d ms\n",
         timeout, wait_and_cancel);

    int i_ret, p_pipe[2];
    i_ret = FUNC10(p_pipe);
    FUNC1(i_ret == 0 && p_pipe[1] >= 0);

    char psz_fd_uri[FUNC7("fd://") + 11];
    FUNC6(psz_fd_uri, "fd://%u", (unsigned) p_pipe[1]);
    input_item_t *p_item = FUNC2(psz_fd_uri, "test timeout", 0,
                                              ITEM_LOCAL);
    FUNC1(p_item != NULL);

    vlc_sem_t sem;
    FUNC12 (&sem, 0);
    const struct input_preparser_callbacks_t cbs = {
        .on_preparse_ended = input_item_preparse_timeout,
    };
    i_ret = FUNC5(vlc->p_libvlc_int, p_item,
                                   META_REQUEST_OPTION_SCOPE_LOCAL |
                                   META_REQUEST_OPTION_FETCH_LOCAL,
                                   &cbs, &sem, timeout, vlc);
    FUNC1(i_ret == 0);

    if (wait_and_cancel > 0)
    {
        FUNC14( FUNC0(wait_and_cancel) );
        FUNC4(vlc->p_libvlc_int, vlc);

    }
    FUNC13(&sem);

    FUNC3(p_item);
    FUNC11(&sem);
    FUNC9(p_pipe[0]);
    FUNC9(p_pipe[1]);
}