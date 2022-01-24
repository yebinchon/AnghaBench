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
 unsigned int MAX_NUMBER ; 
 int* bson_numstr_len ; 
 int /*<<< orphan*/ * bson_numstrs ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*,char*,unsigned int) ; 

__attribute__((used)) static inline int 
FUNC2( char *str, unsigned int i ) {
	if ( i < MAX_NUMBER) {
		FUNC0( str, bson_numstrs[i], 4 );
		return bson_numstr_len[i];
	} else {
		return FUNC1( str,"%u", i );
	}
}