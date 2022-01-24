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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct RTPHeader {int ve; int pt; void* cpart; void* tlen; void* ssrc; void* timestamp; void* sequnum; scalar_t__ ma; scalar_t__ cc; scalar_t__ xe; scalar_t__ pe; } ;
typedef  int /*<<< orphan*/  rdata ;
struct TYPE_3__ {int payload_type; scalar_t__ sequnum; int /*<<< orphan*/  friend_number; int /*<<< orphan*/  m; int /*<<< orphan*/  ssrc; } ;
typedef  TYPE_1__ RTPSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ MAX_CRYPTO_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  errno ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8 (RTPSession *session, const uint8_t *data, uint16_t length)
{
    if (!session) {
        FUNC0("No session!");
        return -1;
    }

    uint8_t rdata[length + sizeof(struct RTPHeader) + 1];
    FUNC5(rdata, 0, sizeof(rdata));

    rdata[0] = session->payload_type;

    struct RTPHeader *header = (struct RTPHeader *)(rdata  + 1);

    header->ve = 2;
    header->pe = 0;
    header->xe = 0;
    header->cc = 0;

    header->ma = 0;
    header->pt = session->payload_type % 128;

    header->sequnum = FUNC3(session->sequnum);
    header->timestamp = FUNC2(FUNC1());
    header->ssrc = FUNC2(session->ssrc);

    header->cpart = 0;
    header->tlen = FUNC3(length);

    if (MAX_CRYPTO_DATA_SIZE > length + sizeof(struct RTPHeader) + 1) {

        /**
         * The lenght is lesser than the maximum allowed lenght (including header)
         * Send the packet in single piece.
         */

        FUNC4(rdata + 1 + sizeof(struct RTPHeader), data, length);

        if (-1 == FUNC6(session->m, session->friend_number, rdata, sizeof(rdata)))
            FUNC0("RTP send failed (len: %d)! std error: %s", sizeof(rdata), FUNC7(errno));
    } else {

        /**
         * The lenght is greater than the maximum allowed lenght (including header)
         * Send the packet in multiple pieces.
         */

        uint16_t sent = 0;
        uint16_t piece = MAX_CRYPTO_DATA_SIZE - (sizeof(struct RTPHeader) + 1);

        while ((length - sent) + sizeof(struct RTPHeader) + 1 > MAX_CRYPTO_DATA_SIZE) {
            FUNC4(rdata + 1 + sizeof(struct RTPHeader), data + sent, piece);

            if (-1 == FUNC6(session->m, session->friend_number,
                                               rdata, piece + sizeof(struct RTPHeader) + 1))
                FUNC0("RTP send failed (len: %d)! std error: %s",
                               piece + sizeof(struct RTPHeader) + 1, FUNC7(errno));

            sent += piece;
            header->cpart = FUNC3(sent);
        }

        /* Send remaining */
        piece = length - sent;

        if (piece) {
            FUNC4(rdata + 1 + sizeof(struct RTPHeader), data + sent, piece);

            if (-1 == FUNC6(session->m, session->friend_number, rdata,
                                               piece + sizeof(struct RTPHeader) + 1))
                FUNC0("RTP send failed (len: %d)! std error: %s",
                               piece + sizeof(struct RTPHeader) + 1, FUNC7(errno));
        }
    }

    session->sequnum ++;
    return 0;
}