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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 char FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

char *FUNC4(char *string)
{
  unsigned len = 0;
  unsigned int maxlen_wanted;
  char *sp;
  int c;
  /*
   * Be smart and check for NULL pointer.
   * Don't know wether TURBOC does this.
   */
  if (!string)
    return(NULL);
  maxlen_wanted = (unsigned int)((unsigned char)string[0]);
  sp = &(string[2]);
  /*
   * Should the string be shorter maxlen_wanted including or excluding
   * the trailing '\0' ? We don't take any risk.
   */
  while(len < maxlen_wanted-1)
  {
    c=FUNC1();
    /*
     * shold we check for backspace here?
     * TURBOC does (just checked) but doesn't in cscanf (thats harder
     * or even impossible). We do the same.
     */
    if (c == '\b')
    {
      if (len > 0)
      {
	FUNC0("\b \b");	/* go back, clear char on screen with space
				   and go back again */
	len--;
	sp[len] = '\0';		/* clear the character in the string */
      }
    }
    else if (c == '\r')
    {
      sp[len] = '\0';
      break;
    }
    else if (c == 0)
    {
      /* special character ends input */
      sp[len] = '\0';
      FUNC3(c);		/* keep the char for later processing */
      break;
    }
    else
    {
      sp[len] = FUNC2(c);
      len++;
    }
  }
  sp[maxlen_wanted-1] = '\0';
  string[1] = (char)((unsigned char)len);
  return(sp);
}