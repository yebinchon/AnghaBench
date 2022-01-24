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
struct keyword {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2( const void *arg1, const void *arg2 )
{
    const struct keyword *key1 = arg1, *key2 = arg2;
    int len = FUNC1( key1->len, key2->len );
    int ret;

    if ((ret = FUNC0( key1->name, key2->name, len ))) return ret;
    if (key1->len < key2->len) return -1;
    else if (key1->len > key2->len) return 1;
    return 0;
}