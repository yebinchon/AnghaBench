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
 int DNS_CLASS_ANY ; 
 int DNS_CLASS_IN ; 
 int _DNS_CLASS_INVALID ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

int FUNC1(const char *s) {

        if (!s)
                return _DNS_CLASS_INVALID;

        if (FUNC0(s, "IN"))
                return DNS_CLASS_IN;
        else if (FUNC0(s, "ANY"))
                return DNS_CLASS_ANY;

        return _DNS_CLASS_INVALID;
}