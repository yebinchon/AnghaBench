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
struct vlc_demux_private {int /*<<< orphan*/  module; } ;
struct TYPE_5__ {int /*<<< orphan*/ * s; int /*<<< orphan*/  psz_name; int /*<<< orphan*/  psz_filepath; } ;
typedef  TYPE_1__ demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vlc_demux_private* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(demux_t *demux)
{
    struct vlc_demux_private *priv = FUNC4(demux);

    FUNC2(demux, priv->module);
    FUNC1(demux->psz_filepath);
    FUNC1(demux->psz_name);

    FUNC0(demux->s != NULL);
    FUNC3(demux->s);
}