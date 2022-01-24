#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  i_chroma; } ;
typedef  TYPE_1__ video_format_t ;
struct TYPE_8__ {int /*<<< orphan*/  video; } ;
typedef  TYPE_2__ es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 

void FUNC2( es_format_t *p_es, const video_format_t *p_fmt )
{
    FUNC0( p_es, VIDEO_ES, p_fmt->i_chroma );
    FUNC1( &p_es->video, p_fmt );
}