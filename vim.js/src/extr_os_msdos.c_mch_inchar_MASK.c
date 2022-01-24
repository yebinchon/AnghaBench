#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int char_u ;
struct TYPE_2__ {scalar_t__ vc_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR ; 
 scalar_t__ CONV_NONE ; 
 scalar_t__ ESC ; 
 void* FALSE ; 
 long FOREVER ; 
 scalar_t__ KE_CURSORHOLD ; 
 int KS_EXTRA ; 
#define  K_NUL 128 
 int K_SPECIAL ; 
 int NUL ; 
 void* TRUE ; 
 scalar_t__ FUNC0 (long) ; 
 scalar_t__ beep_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bioskey_read ; 
 int /*<<< orphan*/  bioskey_ready ; 
 void* cbrk_pressed ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int*,int,int) ; 
 void* delayed_redraw ; 
 int FUNC6 () ; 
 TYPE_1__ input_conv ; 
 scalar_t__ FUNC7 () ; 
 int mouse_click ; 
 void* mouse_hidden ; 
 char mouse_x ; 
 char mouse_y ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ p_biosk ; 
 scalar_t__ p_consk ; 
 long p_ut ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int FUNC12 (int) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int
FUNC15(
    char_u	*buf,
    int		maxlen,
    long	time,
    int		tb_change_cnt)
{
    int		len = 0;
    int		c;
    int		tmp_c;
    static int	nextchar = 0;	    /* may keep character when maxlen == 1 */

    /*
     * if we got a ctrl-C when we were busy, there will be a "^C" somewhere
     * on the screen, so we need to redisplay it.
     */
    if (delayed_redraw)
    {
	delayed_redraw = FALSE;
	FUNC14(CLEAR);
	FUNC10();
	FUNC8();
    }

    /* return remaining character from last call */
    if (nextchar)
    {
	*buf = nextchar;
	nextchar = 0;
	return 1;
    }

#ifdef FEAT_MOUSE
    if (time != 0)
	show_mouse(TRUE);
#endif
#ifdef DJGPP
    set_sys_cursor();
#endif
    if (time >= 0)
    {
	if (FUNC0(time) == 0)	/* no character available */
	{
#ifdef FEAT_MOUSE
	    show_mouse(FALSE);
#endif
	    return 0;
	}
    }
    else    /* time == -1 */
    {
	/*
	 * If there is no character available within 2 seconds (default)
	 * write the autoscript file to disk.  Or cause the CursorHold event
	 * to be triggered.
	 */
	if (FUNC0(p_ut) == 0)
	{
#ifdef FEAT_AUTOCMD
	    if (trigger_cursorhold() && maxlen >= 3)
	    {
		buf[0] = K_SPECIAL;
		buf[1] = KS_EXTRA;
		buf[2] = (int)KE_CURSORHOLD;
		return 3;
	    }
#endif
	    FUNC1();
	}
    }
    FUNC0(FOREVER);	/* wait for key or mouse click */

/*
 * Try to read as many characters as there are, until the buffer is full.
 */
    /*
     * we will get at least one key. Get more if they are available
     * After a ctrl-break we have to read a 0 (!) from the buffer.
     * bioskey(1) will return 0 if no key is available and when a
     * ctrl-break was typed. When ctrl-break is hit, this does not always
     * implies a key hit.
     */
    cbrk_pressed = FALSE;
#ifdef FEAT_MOUSE
    if (mouse_click >= 0 && maxlen >= 5)
    {
	len = 5;
	*buf++ = ESC + 128;
	*buf++ = 'M';
	*buf++ = mouse_click;
	*buf++ = mouse_x + '!';
	*buf++ = mouse_y + '!';
	mouse_click = -1;
    }
    else
#endif
    {
#ifdef FEAT_MOUSE
	mouse_hidden = TRUE;
#endif
	if (p_biosk && !p_consk)
	{
	    while ((len == 0 || FUNC2(bioskey_ready)) && len < maxlen)
	    {
		c = FUNC12(FUNC2(bioskey_read)); /* get the key */
		/*
		 * translate a few things for inchar():
		 * 0x0000 == CTRL-break		-> 3	(CTRL-C)
		 * 0x0300 == CTRL-@		-> NUL
		 * 0xnn00 == extended key code	-> K_NUL, nn
		 * 0xnne0 == enhanced keyboard	-> K_NUL, nn
		 * K_NUL			-> K_NUL, 3
		 */
		if (c == 0)
		    c = 3;
		else if (c == 0x0300)
		    c = NUL;
		else if ((c & 0xff) == 0
			|| c == K_NUL
			|| c == 0x4e2b
			|| c == 0x4a2d
			|| c == 0x372a
			|| ((c & 0xff) == 0xe0 && c != 0xe0))
		{
		    if (c == K_NUL)
			c = 3;
		    else
			c >>= 8;
		    *buf++ = K_NUL;
		    ++len;
		}

		if (len < maxlen)
		{
		    *buf++ = c;
		    len++;
#ifdef FEAT_MBYTE
		    /* Convert from 'termencoding' to 'encoding'. Only
		     * translate normal characters, not key codes. */
		    if (input_conv.vc_type != CONV_NONE
					    && (len == 1 || buf[-2] != K_NUL))
			len += convert_input(buf - 1, 1, maxlen - len + 1) - 1;
#endif
		}
		else
		    nextchar = c;
	    }
	}
	else
	{
	    while ((len == 0 || (p_consk ? FUNC4() : FUNC7()))
		    && len < maxlen)
	    {
		switch (c = (p_consk ? FUNC3() : FUNC6()))
		{
		    case 0:
			/* NUL means that there is another character.
			 * Get it immediately, because kbhit() doesn't always
			 * return TRUE for the second character.
			 */
			if (p_consk)
			    c = FUNC3();
			else
			    c = FUNC6();
			tmp_c = FUNC12(c << 8);
			if (tmp_c == (c << 8))
			{
			    *buf++ = K_NUL;
			    ++len;
			}
			else
			    c = tmp_c;
			break;
		    case K_NUL:
			*buf++ = K_NUL;
			++len;
			c = 3;
			break;
		    case 3:
			cbrk_pressed = TRUE;
			/*FALLTHROUGH*/
		    default:
			break;
		}
		if (len < maxlen)
		{
		    *buf++ = c;
		    ++len;
		}
		else
		    nextchar = c;
	    }
	}
    }
#ifdef FEAT_MOUSE
    show_mouse(FALSE);
#endif

    beep_count = 0;	    /* may beep again now that we got some chars */
    return len;
}