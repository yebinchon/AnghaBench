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
struct TYPE_3__ {unsigned char* pvBuffer; unsigned int cbBuffer; } ;
typedef  TYPE_1__ SecBuffer ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(SOCKET sock, SecBuffer *buf)
{
    unsigned received = 0;

    while (1)
    {
        unsigned char *data = buf->pvBuffer;
        unsigned expected = 0;
        int ret;

        ret = FUNC0(sock, (char *)data+received, buf->cbBuffer-received, 0);
        if (ret == -1)
        {
            FUNC1("recv failed\n");
            return -1;
        }
        else if(ret == 0)
        {
            FUNC1("connection closed\n");
            return -1;
        }
        received += ret;

        while (expected < received)
        {
            unsigned frame_size = 5 + ((data[3]<<8) | data[4]);
            expected += frame_size;
            data += frame_size;
        }

        if (expected == received)
            break;
    }

    buf->cbBuffer = received;

    return received;
}