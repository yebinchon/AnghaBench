#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_iconv_t ;
struct TYPE_7__ {int /*<<< orphan*/  psz_url; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_6__ {scalar_t__ conv; } ;
struct TYPE_8__ {int /*<<< orphan*/ * block; int /*<<< orphan*/ * peek; TYPE_1__ text; } ;
typedef  TYPE_3__ stream_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(stream_t *s)
{
    stream_priv_t *priv = (stream_priv_t *)s;

    if (priv->text.conv != (vlc_iconv_t)(-1))
        FUNC2(priv->text.conv);

    if (priv->peek != NULL)
        FUNC0(priv->peek);
    if (priv->block != NULL)
        FUNC0(priv->block);

    FUNC1(s->psz_url);
    FUNC3(s);
}