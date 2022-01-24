#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 

__attribute__((used)) static inline void FUNC3(IStream *stm)
{
    LARGE_INTEGER pos;
    ULARGE_INTEGER size;
    pos.QuadPart = size.QuadPart = 0;

    FUNC1(stm, pos, STREAM_SEEK_SET, NULL);
    FUNC0(stm);
    FUNC1(stm, pos, STREAM_SEEK_SET, NULL);
    FUNC2(stm, size);
}