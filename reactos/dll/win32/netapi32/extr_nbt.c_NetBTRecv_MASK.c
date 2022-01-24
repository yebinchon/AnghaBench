#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int len; char* buf; } ;
typedef  TYPE_1__ WSABUF ;
typedef  int UCHAR ;
struct TYPE_12__ {int /*<<< orphan*/  recv_success; } ;
struct TYPE_11__ {scalar_t__ fd; scalar_t__ bytesPending; int /*<<< orphan*/  cs; } ;
struct TYPE_10__ {int ncb_length; scalar_t__ ncb_buffer; } ;
typedef  TYPE_2__* PNCB ;
typedef  TYPE_3__ NetBTSession ;
typedef  TYPE_4__ NetBTAdapter ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int*) ; 
 int NBSS_EXTENSION ; 
 int NBSS_HDRSIZE ; 
 int NBSS_KEEPALIVE ; 
 int NBSS_MSG ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int NRC_BADDR ; 
 int NRC_CMDCAN ; 
 int NRC_ENVNOTDEF ; 
 int NRC_GOODRET ; 
 int NRC_INCOMP ; 
 int NRC_SABORT ; 
 int NRC_SNUMOUT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (scalar_t__,TYPE_1__*,size_t,size_t*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UCHAR FUNC10(void *adapt, void *sess, PNCB ncb)
{
    NetBTAdapter *adapter = adapt;
    NetBTSession *session = sess;
    UCHAR buffer[NBSS_HDRSIZE], ret;
    int r;
    WSABUF wsaBufs[2];
    DWORD bufferCount, bytesReceived, flags;

    FUNC7("adapt %p, session %p, NCB %p\n", adapt, session, ncb);

    if (!adapter) return NRC_ENVNOTDEF;
    if (!ncb) return NRC_BADDR;
    if (!ncb->ncb_buffer) return NRC_BADDR;
    if (!session) return NRC_SNUMOUT;
    if (session->fd == INVALID_SOCKET) return NRC_SNUMOUT;

    FUNC1(&session->cs);
    bufferCount = 0;
    if (session->bytesPending == 0)
    {
        bufferCount++;
        wsaBufs[0].len = NBSS_HDRSIZE;
        wsaBufs[0].buf = (char*)buffer;
    }
    wsaBufs[bufferCount].len = ncb->ncb_length;
    wsaBufs[bufferCount].buf = (char*)ncb->ncb_buffer;
    bufferCount++;

    flags = 0;
    /* FIXME: should poll a bit so I can check the cancel flag */
    r = FUNC9(session->fd, wsaBufs, bufferCount, &bytesReceived, &flags,
     NULL, NULL);
    if (r == SOCKET_ERROR && FUNC8() != WSAEWOULDBLOCK)
    {
        FUNC3(&session->cs);
        FUNC0("Receive error, WSAGetLastError() returns %d\n", FUNC8());
        FUNC6(ncb);
        ret = NRC_SABORT;
    }
    else if (FUNC5(ncb))
    {
        FUNC3(&session->cs);
        ret = NRC_CMDCAN;
    }
    else
    {
        if (bufferCount == 2)
        {
            if (buffer[0] == NBSS_KEEPALIVE)
            {
                FUNC3(&session->cs);
                FUNC2("Oops, received a session keepalive and lost my place\n");
                /* need to read another session header until we get a session
                 * message header. */
                FUNC6(ncb);
                ret = NRC_SABORT;
                goto error;
            }
            else if (buffer[0] != NBSS_MSG)
            {
                FUNC3(&session->cs);
                FUNC2("Received unexpected session msg type %d\n", buffer[0]);
                FUNC6(ncb);
                ret = NRC_SABORT;
                goto error;
            }
            else
            {
                if (buffer[1] & NBSS_EXTENSION)
                {
                    FUNC3(&session->cs);
                    FUNC2("Received a message that's too long for my taste\n");
                    FUNC6(ncb);
                    ret = NRC_SABORT;
                    goto error;
                }
                else
                {
                    session->bytesPending = NBSS_HDRSIZE
                     + FUNC4(&buffer[2]) - bytesReceived;
                    ncb->ncb_length = bytesReceived - NBSS_HDRSIZE;
                    FUNC3(&session->cs);
                }
            }
        }
        else
        {
            if (bytesReceived < session->bytesPending)
                session->bytesPending -= bytesReceived;
            else
                session->bytesPending = 0;
            FUNC3(&session->cs);
            ncb->ncb_length = bytesReceived;
        }
        if (session->bytesPending > 0)
            ret = NRC_INCOMP;
        else
        {
            ret = NRC_GOODRET;
            adapter->recv_success++;
        }
    }
error:
    FUNC7("returning 0x%02x\n", ret);
    return ret;
}