#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  curl; } ;
typedef  TYPE_1__ CurlGlue ;
typedef  TYPE_1__ CURL ;

/* Variables and functions */
 scalar_t__ CURLM_OK ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC2(CurlGlue *g, CURL *c) {
        FUNC0(g);
        FUNC0(c);

        if (FUNC1(g->curl, c) != CURLM_OK)
                return -EIO;

        return 0;
}