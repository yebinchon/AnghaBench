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
struct rfb_srvr_updt_msg {int /*<<< orphan*/  encoding; void* height; void* width; void* y; void* x; void* numrects; scalar_t__ pad; scalar_t__ type; } ;
struct rfb_srvr_rect_hdr {int /*<<< orphan*/  encoding; void* height; void* width; void* y; void* x; void* numrects; scalar_t__ pad; scalar_t__ type; } ;
struct rfb_softc {int width; int height; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFB_ENCODING_RESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct rfb_srvr_updt_msg*,int) ; 

__attribute__((used)) static void
FUNC3(struct rfb_softc *rc, int cfd)
{
	struct rfb_srvr_updt_msg supdt_msg;
	struct rfb_srvr_rect_hdr srect_hdr;

	/* Number of rectangles: 1 */
	supdt_msg.type = 0;
	supdt_msg.pad = 0;
	supdt_msg.numrects = FUNC1(1);
	FUNC2(cfd, &supdt_msg, sizeof(struct rfb_srvr_updt_msg));

	/* Rectangle header */
	srect_hdr.x = FUNC1(0);
	srect_hdr.y = FUNC1(0);
	srect_hdr.width = FUNC1(rc->width);
	srect_hdr.height = FUNC1(rc->height);
	srect_hdr.encoding = FUNC0(RFB_ENCODING_RESIZE);
	FUNC2(cfd, &srect_hdr, sizeof(struct rfb_srvr_rect_hdr));
}