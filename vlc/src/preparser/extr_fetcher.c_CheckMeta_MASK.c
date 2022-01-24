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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_meta; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  vlc_meta_Album ; 
 int /*<<< orphan*/  vlc_meta_Artist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_meta_Title ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( input_item_t* item )
{
    FUNC1( &item->lock );
    bool error = !item->p_meta ||
                 !FUNC0( item->p_meta, vlc_meta_Title ) ||
                 !FUNC0( item->p_meta, vlc_meta_Artist ) ||
                 !FUNC0( item->p_meta, vlc_meta_Album );
    FUNC2( &item->lock );
    return error;
}