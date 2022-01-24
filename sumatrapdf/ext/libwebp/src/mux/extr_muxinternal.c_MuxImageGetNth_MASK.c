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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  const WebPMuxImage ;
typedef  int /*<<< orphan*/  WebPMuxError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/  const***) ; 
 int /*<<< orphan*/  WEBP_MUX_NOT_FOUND ; 
 int /*<<< orphan*/  WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**) ; 

WebPMuxError FUNC2(const WebPMuxImage** wpi_list, uint32_t nth,
                            WebPMuxImage** wpi) {
  FUNC1(wpi_list);
  FUNC1(wpi);
  if (!FUNC0((WebPMuxImage**)wpi_list, nth,
                                (WebPMuxImage***)&wpi_list)) {
    return WEBP_MUX_NOT_FOUND;
  }
  *wpi = (WebPMuxImage*)*wpi_list;
  return WEBP_MUX_OK;
}