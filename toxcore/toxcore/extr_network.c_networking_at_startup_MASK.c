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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int at_startup_ran ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void)
{
    if (at_startup_ran != 0)
        return 0;

#ifndef VANILLA_NACL

#ifdef USE_RANDOMBYTES_STIR
    randombytes_stir();
#else
    FUNC4();
#endif /*USE_RANDOMBYTES_STIR*/

#endif/*VANILLA_NACL*/

#if defined(_WIN32) || defined(__WIN32__) || defined (WIN32)
    WSADATA wsaData;

    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != NO_ERROR)
        return -1;

#endif
    FUNC5((uint32_t)FUNC2());
    at_startup_ran = 1;
    return 0;
}