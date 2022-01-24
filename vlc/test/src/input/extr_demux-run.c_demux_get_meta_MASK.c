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
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int /*<<< orphan*/  input_attachment_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_GET_ATTACHMENTS ; 
 int /*<<< orphan*/  DEMUX_GET_META ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static void FUNC4(demux_t *demux)
{
    vlc_meta_t *p_meta = FUNC3();
    if (FUNC1(p_meta == NULL) )
        return;

    input_attachment_t **attachment;
    int i_attachment;

    FUNC0(demux, DEMUX_GET_META, p_meta);
    FUNC0(demux, DEMUX_GET_ATTACHMENTS, &attachment, &i_attachment);

    FUNC2(p_meta);
}