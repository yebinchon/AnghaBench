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
struct ps_flag {char* name; int flag; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 struct ps_flag* ps_flags ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2(DWORD flags)
{
    char flagstr[1000] = "";

    const struct ps_flag *flag = ps_flags;
    for( ; flag->name; flag++) {
        if(flags & flag->flag) {
            FUNC1(flagstr, flag->name);
            FUNC1(flagstr, "|");
        }
    }
    FUNC0("flags %08x %s\n", flags, flagstr);
}