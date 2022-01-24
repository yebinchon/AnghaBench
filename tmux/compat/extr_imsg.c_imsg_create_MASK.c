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
typedef  void* uint32_t ;
typedef  scalar_t__ uint16_t ;
struct imsgbuf {int /*<<< orphan*/  pid; } ;
struct imsg_hdr {int /*<<< orphan*/  pid; void* peerid; scalar_t__ flags; void* type; } ;
struct ibuf {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ IMSG_HEADER_SIZE ; 
 scalar_t__ MAX_IMSGSIZE ; 
 int /*<<< orphan*/  errno ; 
 struct ibuf* FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (struct ibuf*,struct imsg_hdr*,int) ; 

struct ibuf *
FUNC2(struct imsgbuf *ibuf, uint32_t type, uint32_t peerid, pid_t pid,
    uint16_t datalen)
{
	struct ibuf	*wbuf;
	struct imsg_hdr	 hdr;

	datalen += IMSG_HEADER_SIZE;
	if (datalen > MAX_IMSGSIZE) {
		errno = ERANGE;
		return (NULL);
	}

	hdr.type = type;
	hdr.flags = 0;
	hdr.peerid = peerid;
	if ((hdr.pid = pid) == 0)
		hdr.pid = ibuf->pid;
	if ((wbuf = FUNC0(datalen, MAX_IMSGSIZE)) == NULL) {
		return (NULL);
	}
	if (FUNC1(wbuf, &hdr, sizeof(hdr)) == -1)
		return (NULL);

	return (wbuf);
}