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
typedef  char char_u ;

/* Variables and functions */
 char* FUNC0 (void*,char) ; 
 char* FUNC1 (void*,char) ; 

void
FUNC2(void * fname)
{
    char_u	*cp;
    char_u	*fp;

    if ((cp = FUNC0( fname, ';')) != NULL) /* remove version */
	*cp = '\0';
    else if ((cp = FUNC1( fname, '.')) != NULL )
    {
	if      ((fp = FUNC1( fname, ']')) != NULL ) {;}
	else if ((fp = FUNC1( fname, '>')) != NULL ) {;}
	else fp = fname;

	while ( *fp != '\0' && fp < cp )
	    if ( *fp++ == '.' )
		*cp = '\0';
    }
    return ;
}