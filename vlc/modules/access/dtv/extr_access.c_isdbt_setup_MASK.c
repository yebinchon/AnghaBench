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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void* uint32_t ;
struct TYPE_3__ {void* time_interleaving; void* segment_count; int /*<<< orphan*/  code_rate; int /*<<< orphan*/  modulation; } ;
typedef  TYPE_1__ isdbt_layer_t ;
typedef  int /*<<< orphan*/  dvb_device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7 (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    isdbt_layer_t layers[3];
    uint32_t guard = FUNC4 (obj);
    uint32_t bw = FUNC5 (obj, "dvb-bandwidth");
    int tx = FUNC5 (obj, "dvb-transmission");

    for (unsigned i = 0; i < 3; i++)
    {
        char varname[sizeof ("dvb-X-interleaving")];
        FUNC1 (varname, "dvb-X-", 6);
        varname[4] = 'a' + i;

        FUNC2 (varname + 6, "modulation");
        layers[i].modulation = FUNC6 (obj, varname);
        FUNC2 (varname + 6, "fec");
        layers[i].code_rate = FUNC3 (obj, varname);
        FUNC2 (varname + 6, "count");
        layers[i].segment_count = FUNC5 (obj, varname);
        FUNC2 (varname + 6, "interleaving");
        layers[i].time_interleaving = FUNC5 (obj, varname);
    }

    return FUNC0 (dev, freq, bw, tx, guard, layers);
}