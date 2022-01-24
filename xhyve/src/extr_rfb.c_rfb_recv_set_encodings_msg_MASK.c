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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct rfb_softc {int enc_raw_ok; int enc_zlib_ok; int enc_resize_ok; int /*<<< orphan*/  zstream; } ;
struct rfb_enc_msg {int /*<<< orphan*/  numencs; } ;
typedef  int /*<<< orphan*/  encoding ;
typedef  int /*<<< orphan*/  enc_msg ;

/* Variables and functions */
#define  RFB_ENCODING_RAW 130 
#define  RFB_ENCODING_RESIZE 129 
#define  RFB_ENCODING_ZLIB 128 
 int /*<<< orphan*/  Z_BEST_SPEED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(struct rfb_softc *rc, int cfd)
{
	struct rfb_enc_msg enc_msg;
	int i;
	uint32_t encoding;

	FUNC0((sizeof(enc_msg) - 1) == 3);
	(void)FUNC4(cfd, ((uint8_t *)&enc_msg)+1, sizeof(enc_msg)-1);

	for (i = 0; i < FUNC3(enc_msg.numencs); i++) {
		(void)FUNC4(cfd, &encoding, sizeof(encoding));
		switch (FUNC2(encoding)) {
		case RFB_ENCODING_RAW:
			rc->enc_raw_ok = true;
			break;
		case RFB_ENCODING_ZLIB:
			rc->enc_zlib_ok = true;
			FUNC1(&rc->zstream, Z_BEST_SPEED);
			break;
		case RFB_ENCODING_RESIZE:
			rc->enc_resize_ok = true;
			break;
		}
	}
}