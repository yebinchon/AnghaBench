#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int gint64 ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
typedef  TYPE_1__ GTimeVal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

gint64
FUNC1()
{
    GTimeVal tv;
    gint64 t;

    FUNC0 (&tv);
    t = tv.tv_sec * (gint64)1000000 + tv.tv_usec;
    return t;
}