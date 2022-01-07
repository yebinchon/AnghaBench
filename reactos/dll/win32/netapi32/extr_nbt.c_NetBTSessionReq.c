
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int len; char* buf; } ;
typedef TYPE_1__ WSABUF ;
typedef scalar_t__ UCHAR ;
typedef int SOCKET ;
typedef unsigned int DWORD ;


 int ERR (char*) ;
 int FIXME (char*) ;
 int MAX_DOMAIN_NAME_LEN ;
 int NBR_ADDWORD (scalar_t__*,unsigned int) ;
 scalar_t__ NBSS_ACK ;

 int NBSS_HDRSIZE ;
 scalar_t__ NBSS_NACK ;
 scalar_t__ NBSS_REQ ;
 scalar_t__ NBSS_RETARGET ;
 scalar_t__ NRC_GOODRET ;
 scalar_t__ NRC_NOCALL ;
 scalar_t__ NRC_REMTFUL ;
 scalar_t__ NRC_SABORT ;
 scalar_t__ NRC_SYSTEM ;
 scalar_t__ NetBTNameEncode (scalar_t__ const*,scalar_t__*) ;
 int TRACE (char*,scalar_t__) ;
 int WSARecv (int ,TYPE_1__*,int,unsigned int*,unsigned int*,int *,int *) ;
 int WSASend (int ,TYPE_1__*,int,unsigned int*,int ,int *,int *) ;

__attribute__((used)) static UCHAR NetBTSessionReq(SOCKET fd, const UCHAR *calledName,
 const UCHAR *callingName)
{
    UCHAR buffer[NBSS_HDRSIZE + MAX_DOMAIN_NAME_LEN * 2], ret;
    int r;
    unsigned int len = 0;
    DWORD bytesSent, bytesReceived, recvFlags = 0;
    WSABUF wsaBuf;

    buffer[0] = NBSS_REQ;
    buffer[1] = 0;

    len += NetBTNameEncode(calledName, &buffer[NBSS_HDRSIZE]);
    len += NetBTNameEncode(callingName, &buffer[NBSS_HDRSIZE + len]);

    NBR_ADDWORD(&buffer[2], len);

    wsaBuf.len = len + NBSS_HDRSIZE;
    wsaBuf.buf = (char*)buffer;

    r = WSASend(fd, &wsaBuf, 1, &bytesSent, 0, ((void*)0), ((void*)0));
    if(r < 0 || bytesSent < len + NBSS_HDRSIZE)
    {
        ERR("send failed\n");
        return NRC_SABORT;
    }





    wsaBuf.len = NBSS_HDRSIZE + 1;
    r = WSARecv(fd, &wsaBuf, 1, &bytesReceived, &recvFlags, ((void*)0), ((void*)0));
    if (r < 0 || bytesReceived < NBSS_HDRSIZE)
        ret = NRC_SABORT;
    else if (buffer[0] == NBSS_NACK)
    {
        if (r == NBSS_HDRSIZE + 1)
        {
            switch (buffer[NBSS_HDRSIZE])
            {
                case 128:
                    ret = NRC_REMTFUL;
                    break;
                default:
                    ret = NRC_NOCALL;
            }
        }
        else
            ret = NRC_NOCALL;
    }
    else if (buffer[0] == NBSS_RETARGET)
    {
        FIXME("Got a session retarget, can't deal\n");
        ret = NRC_NOCALL;
    }
    else if (buffer[0] == NBSS_ACK)
        ret = NRC_GOODRET;
    else
        ret = NRC_SYSTEM;

    TRACE("returning 0x%02x\n", ret);
    return ret;
}
