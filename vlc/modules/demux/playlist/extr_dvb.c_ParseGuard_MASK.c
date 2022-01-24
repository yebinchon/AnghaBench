#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct guard   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tab ;
struct guard {char* dvb; char* vlc; } ;

/* Variables and functions */
 struct guard* FUNC0 (char const*,TYPE_1__ const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static const char *FUNC2(const char *str)
{
     static const struct guard
     {
         char dvb[7];
         char vlc[7];
     } tab[] = {
         { "19_128", "19/128" }, { "19_256", "19/256" }, { "1_128", "1/128" },
         { "1_16", "1/16" }, { "1_32", "1/32" }, { "1_4", "1/4" },
         { "1_8", "1/8" }, { "AUTO", "" },
     };

     if (str == NULL || FUNC1(str, "GUARD_INTERVAL_", 15))
         return NULL;
     str += 15;

     const struct guard *g = FUNC0(str, tab, sizeof (tab) / sizeof(tab[0]),
                                     sizeof (tab[0]), cmp);
     return (g != NULL) ? g->vlc : NULL;
}