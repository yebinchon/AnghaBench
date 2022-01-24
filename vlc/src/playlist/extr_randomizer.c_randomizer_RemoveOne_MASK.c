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
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
struct randomizer {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct randomizer*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct randomizer*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct randomizer *r, const vlc_playlist_item_t *item)
{
    ssize_t index = FUNC1(r, item);
    FUNC0(index >= 0); /* item must exist */
    FUNC2(r, index);
}