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
typedef  int ULONG ;
typedef  int UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int const) ; 

__attribute__((used)) static void FUNC1(const UCHAR *bytes, ULONG size, char *buf)
{
    ULONG i;
    buf[0] = '\0';
    for (i = 0; i < size; i++)
    {
        FUNC0(buf + i * 2, "%02x", bytes[i]);
    }
    return;
}