#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_window_t ;
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;
typedef  TYPE_1__ vlc_decoder_device ;
struct vlc_decoder_device_priv {TYPE_1__ device; int /*<<< orphan*/  rc; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decoder_device_Open ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char*,char*,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct vlc_decoder_device_priv* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

vlc_decoder_device *
FUNC7(vout_window_t *window)
{
    struct vlc_decoder_device_priv *priv =
            FUNC5(window, sizeof (*priv));
    if (!priv)
        return NULL;
    char *name = FUNC2(window, "dec-dev");
    module_t *module = FUNC4(&priv->device, "decoder device", name,
                                    true, decoder_device_Open, &priv->device,
                                    window);
    FUNC1(name);
    if (module == NULL)
    {
        FUNC6(&priv->device);
        return NULL;
    }
    FUNC0(priv->device.ops != NULL);
    FUNC3(&priv->rc);
    return &priv->device;
}