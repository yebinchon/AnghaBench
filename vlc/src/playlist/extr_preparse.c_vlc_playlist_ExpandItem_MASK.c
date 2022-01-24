#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ media_vector_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 TYPE_1__ VLC_VECTOR_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int
FUNC4(vlc_playlist_t *playlist, size_t index,
                        input_item_node_t *node)
{
    FUNC0(playlist);

    media_vector_t flatten = VLC_VECTOR_INITIALIZER;
    FUNC1(playlist, &flatten, node);

    int ret = FUNC2(playlist, index, flatten.data, flatten.size);
    FUNC3(&flatten);

    return ret;
}