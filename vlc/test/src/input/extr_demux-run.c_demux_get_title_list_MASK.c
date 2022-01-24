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
typedef  int /*<<< orphan*/  input_title_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_GET_TITLE_INFO ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(demux_t *demux)
{
    int title;
    int title_offset;
    int seekpoint_offset;
    input_title_t **title_list;

    if (FUNC0(demux, DEMUX_GET_TITLE_INFO, &title_list, &title,
                      &title_offset, &seekpoint_offset) == VLC_SUCCESS)
    {
        for (int i = 0; i < title; i++)
            FUNC1(title_list[i]);
    }
}