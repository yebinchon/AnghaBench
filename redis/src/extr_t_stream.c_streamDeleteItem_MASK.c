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
typedef  int /*<<< orphan*/  streamIterator ;
typedef  int /*<<< orphan*/  streamID ;
typedef  int /*<<< orphan*/  stream ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(stream *s, streamID *id) {
    int deleted = 0;
    streamIterator si;
    FUNC2(&si,s,id,id,0);
    streamID myid;
    int64_t numfields;
    if (FUNC0(&si,&myid,&numfields)) {
        FUNC1(&si,&myid);
        deleted = 1;
    }
    FUNC3(&si);
    return deleted;
}