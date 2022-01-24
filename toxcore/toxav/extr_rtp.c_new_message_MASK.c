#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint16_t ;
struct TYPE_2__ {void* tlen; void* cpart; void* ssrc; void* timestamp; void* sequnum; } ;
struct RTPMessage {TYPE_1__ header; int /*<<< orphan*/  len; } ;
struct RTPHeader {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct RTPMessage* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,size_t) ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 (void*) ; 

struct RTPMessage *FUNC5 (size_t allocate_len, const uint8_t *data, uint16_t data_length)
{
    FUNC0(allocate_len >= data_length);

    struct RTPMessage *msg = FUNC1(sizeof(struct RTPMessage) + (allocate_len - sizeof(struct RTPHeader)), 1);

    msg->len = data_length - sizeof(struct RTPHeader);
    FUNC2(&msg->header, data, data_length);

    msg->header.sequnum = FUNC4(msg->header.sequnum);
    msg->header.timestamp = FUNC3(msg->header.timestamp);
    msg->header.ssrc = FUNC3(msg->header.ssrc);

    msg->header.cpart = FUNC4(msg->header.cpart);
    msg->header.tlen = FUNC4(msg->header.tlen);

    return msg;
}