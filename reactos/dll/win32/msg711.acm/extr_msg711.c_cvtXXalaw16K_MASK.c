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
typedef  int /*<<< orphan*/  PACMDRVSTREAMINSTANCE ;
typedef  int* LPDWORD ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,short) ; 
 short FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(PACMDRVSTREAMINSTANCE adsi,
                         const unsigned char* src, LPDWORD srcsize,
                         unsigned char* dst, LPDWORD dstsize)
{
    DWORD       len = FUNC2(*srcsize, *dstsize / 2);
    DWORD       i;
    short       w;

    *srcsize = len;
    *dstsize = len * 2;
    for (i = 0; i < len; i++)
    {
        w = FUNC1(*src++);
        FUNC0(dst, w);    dst += 2;
    }
}