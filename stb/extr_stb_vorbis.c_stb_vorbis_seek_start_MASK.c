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
struct TYPE_7__ {int next_seg; int /*<<< orphan*/  first_decode; scalar_t__ previous_length; int /*<<< orphan*/  first_audio_page_offset; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VORBIS_invalid_api_mixing ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(stb_vorbis *f)
{
   if (FUNC0(f)) { return FUNC1(f, VORBIS_invalid_api_mixing); }
   FUNC2(f, f->first_audio_page_offset);
   f->previous_length = 0;
   f->first_decode = TRUE;
   f->next_seg = -1;
   return FUNC3(f);
}