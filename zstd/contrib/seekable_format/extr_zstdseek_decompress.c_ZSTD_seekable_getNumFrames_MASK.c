#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tableLen; } ;
struct TYPE_5__ {TYPE_1__ seekTable; } ;
typedef  TYPE_2__ ZSTD_seekable ;

/* Variables and functions */
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

unsigned FUNC1(ZSTD_seekable* const zs)
{
    FUNC0(zs->seekTable.tableLen <= UINT_MAX);
    return (unsigned)zs->seekTable.tableLen;
}