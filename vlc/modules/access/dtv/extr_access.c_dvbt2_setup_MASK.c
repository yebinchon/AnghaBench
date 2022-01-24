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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  dvb_device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,void*,void*,int,void*,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5 (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    const char *mod = FUNC4 (obj, "dvb-modulation");
    uint32_t fec = FUNC1 (obj, "dvb-fec");
    uint32_t guard = FUNC2 (obj);
    uint32_t bw = FUNC3 (obj, "dvb-bandwidth");
    uint32_t plp = FUNC3 (obj, "dvb-plp-id");
    int tx = FUNC3 (obj, "dvb-transmission");

    return FUNC0 (dev, freq, mod, fec, bw, tx, guard, plp);
}