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
struct vlc_access_private {int /*<<< orphan*/  module; } ;
struct TYPE_5__ {int /*<<< orphan*/  psz_name; int /*<<< orphan*/  psz_filepath; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct vlc_access_private* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(stream_t *access)
{
    struct vlc_access_private *priv = FUNC2(access);

    FUNC1(access, priv->module);
    FUNC0(access->psz_filepath);
    FUNC0(access->psz_name);
}