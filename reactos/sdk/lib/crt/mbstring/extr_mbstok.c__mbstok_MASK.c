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
 void* FUNC0 (unsigned char const*) ; 

unsigned char * FUNC1(unsigned char *s, const unsigned char *delim)
{
  const unsigned char *spanp;
  int c, sc;
  unsigned char *tok;
  static unsigned char *last;


  if (s == NULL && (s = last) == NULL)
    return (NULL);

  /*
   * Skip (span) leading delimiters (s += strspn(s, delim), sort of).
   */
 cont:
  c = *s;
  s = FUNC0(s);

  for (spanp = delim; (sc = *spanp) != 0; spanp = FUNC0(spanp)) {
    if (c == sc)
      goto cont;
  }

  if (c == 0) {			/* no non-delimiter characters */
    last = NULL;
    return (NULL);
  }
  tok = s - 1;

  /*
   * Scan token (scan for delimiters: s += strcspn(s, delim), sort of).
   * Note that delim must have one NUL; we stop if we see that, too.
   */
  for (;;) {
    c = *s;
    s = FUNC0(s);
    spanp = delim;
    do {
      if ((sc = *spanp) == c) {
	if (c == 0)
	  s = NULL;
	else
	  s[-1] = 0;
	last = s;
	return (tok);
      }
      spanp = FUNC0(spanp);
    } while (sc != 0);
  }
  /* NOTREACHED */
}