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
 char* FUNC1 (char const*) ; 
 char* dest ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char const*,char) ; 
 size_t FUNC6 (char const*) ; 
 char* FUNC7 (char*,char const*,size_t) ; 

int FUNC8(const char * src, char ** dest_ref, size_t size) {
  const char * lpc;
  if(src && dest_ref) {
#		define dest (*dest_ref)
		dest = NULL;	/*	Default behavior: no change and sucess. */
		lpc = FUNC1(src);
		if(FUNC6(lpc)) {
			if(FUNC5(lpc,' ') && lpc[0]!='"' && lpc[FUNC6(lpc)-1]!='"') {
				/*	We are in the situation where adding the quotes is allowed.	*/
				/*	Time to add the quotes.	*/
				/*  Consistency test: we must have dest+size>dest+strlen(dest)+2
				 *	or equivalently: strlen(dest)+2<size (see below) */
				if(FUNC6(src)<size) {
					if((dest = (char *)FUNC3(size+2))) {
						char * dpc = dest + (lpc-src);	/*	dpc is the last path component of dest.	*/
						if(dest != FUNC7(dest,src,size)) {
							FUNC0("!  _synctex_copy_with_quoting_last_path_component: Copy problem");
							FUNC2(dest);
							dest = NULL;/*  Don't forget to reinitialize. */
							return -2;
						}
						FUNC4(dpc+1,dpc,FUNC6(dpc)+1);	/*	Also move the null terminating character. */
						dpc[0]='"';
						dpc[FUNC6(dpc)+1]='\0';/*	Consistency test */
						dpc[FUNC6(dpc)]='"';
						return 0;	/*	Success. */
					}
					return -1;	/*	Memory allocation error.	*/
				}
				FUNC0("!  _synctex_copy_with_quoting_last_path_component: Internal inconsistency");
				return -3;
			}
			return 0;	/*	Success. */
		}
		return 0;	/*	No last path component. */
#		undef dest
	}
	return 1; /*  Bad parameter, this value is subject to changes. */
}