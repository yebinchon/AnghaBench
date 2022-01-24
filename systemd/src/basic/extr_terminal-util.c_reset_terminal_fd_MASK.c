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
struct termios {int c_iflag; int c_lflag; int* c_cc; int /*<<< orphan*/  c_cflag; int /*<<< orphan*/  c_oflag; } ;

/* Variables and functions */
 int BRKINT ; 
 int /*<<< orphan*/  CREAD ; 
 int ECHO ; 
 int ECHOCTL ; 
 int ECHOE ; 
 int ECHOK ; 
 int ECHOKE ; 
 int ECHOPRT ; 
 int ICANON ; 
 int ICRNL ; 
 int IEXTEN ; 
 int IGNBRK ; 
 int IGNCR ; 
 int IMAXBEL ; 
 int INLCR ; 
 int ISIG ; 
 int ISTRIP ; 
 int IUCLC ; 
 int IUTF8 ; 
 int /*<<< orphan*/  KDSETMODE ; 
 int /*<<< orphan*/  KD_TEXT ; 
 int /*<<< orphan*/  ONLCR ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  TIOCNXCL ; 
 size_t VEOF ; 
 size_t VEOL ; 
 size_t VEOL2 ; 
 size_t VERASE ; 
 size_t VINTR ; 
 size_t VKILL ; 
 size_t VLNEXT ; 
 size_t VMIN ; 
 size_t VQUIT ; 
 size_t VREPRINT ; 
 size_t VSTART ; 
 size_t VSTOP ; 
 size_t VSUSP ; 
 size_t VTIME ; 
 size_t VWERASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,struct termios*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(int fd, bool switch_to_text) {
        struct termios termios;
        int r = 0;

        /* Set terminal to some sane defaults */

        FUNC0(fd >= 0);

        /* We leave locked terminal attributes untouched, so that
         * Plymouth may set whatever it wants to set, and we don't
         * interfere with that. */

        /* Disable exclusive mode, just in case */
        (void) FUNC1(fd, TIOCNXCL);

        /* Switch to text mode */
        if (switch_to_text)
                (void) FUNC1(fd, KDSETMODE, KD_TEXT);

        /* Set default keyboard mode */
        (void) FUNC5(fd);

        if (FUNC3(fd, &termios) < 0) {
                r = -errno;
                goto finish;
        }

        /* We only reset the stuff that matters to the software. How
         * hardware is set up we don't touch assuming that somebody
         * else will do that for us */

        termios.c_iflag &= ~(IGNBRK | BRKINT | ISTRIP | INLCR | IGNCR | IUCLC);
        termios.c_iflag |= ICRNL | IMAXBEL | IUTF8;
        termios.c_oflag |= ONLCR;
        termios.c_cflag |= CREAD;
        termios.c_lflag = ISIG | ICANON | IEXTEN | ECHO | ECHOE | ECHOK | ECHOCTL | ECHOPRT | ECHOKE;

        termios.c_cc[VINTR]    =   03;  /* ^C */
        termios.c_cc[VQUIT]    =  034;  /* ^\ */
        termios.c_cc[VERASE]   = 0177;
        termios.c_cc[VKILL]    =  025;  /* ^X */
        termios.c_cc[VEOF]     =   04;  /* ^D */
        termios.c_cc[VSTART]   =  021;  /* ^Q */
        termios.c_cc[VSTOP]    =  023;  /* ^S */
        termios.c_cc[VSUSP]    =  032;  /* ^Z */
        termios.c_cc[VLNEXT]   =  026;  /* ^V */
        termios.c_cc[VWERASE]  =  027;  /* ^W */
        termios.c_cc[VREPRINT] =  022;  /* ^R */
        termios.c_cc[VEOL]     =    0;
        termios.c_cc[VEOL2]    =    0;

        termios.c_cc[VTIME]  = 0;
        termios.c_cc[VMIN]   = 1;

        if (FUNC4(fd, TCSANOW, &termios) < 0)
                r = -errno;

finish:
        /* Just in case, flush all crap out */
        (void) FUNC2(fd, TCIOFLUSH);

        return r;
}