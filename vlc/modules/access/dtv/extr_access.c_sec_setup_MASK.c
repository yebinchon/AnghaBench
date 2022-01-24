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
typedef  int /*<<< orphan*/  dvb_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    char pol = FUNC2 (obj);
    unsigned lowf = FUNC1 (obj, "dvb-lnb-low");
    unsigned highf = FUNC1 (obj, "dvb-lnb-high");
    unsigned switchf = FUNC1 (obj, "dvb-lnb-switch");

    FUNC0 (dev, freq, pol, lowf, highf, switchf);
}