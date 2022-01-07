
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef scalar_t__ uint16_t ;
struct imsgbuf {int pid; } ;
struct imsg_hdr {int pid; void* peerid; scalar_t__ flags; void* type; } ;
struct ibuf {int dummy; } ;
typedef int pid_t ;
typedef int hdr ;


 int ERANGE ;
 scalar_t__ IMSG_HEADER_SIZE ;
 scalar_t__ MAX_IMSGSIZE ;
 int errno ;
 struct ibuf* ibuf_dynamic (scalar_t__,scalar_t__) ;
 int imsg_add (struct ibuf*,struct imsg_hdr*,int) ;

struct ibuf *
imsg_create(struct imsgbuf *ibuf, uint32_t type, uint32_t peerid, pid_t pid,
    uint16_t datalen)
{
 struct ibuf *wbuf;
 struct imsg_hdr hdr;

 datalen += IMSG_HEADER_SIZE;
 if (datalen > MAX_IMSGSIZE) {
  errno = ERANGE;
  return (((void*)0));
 }

 hdr.type = type;
 hdr.flags = 0;
 hdr.peerid = peerid;
 if ((hdr.pid = pid) == 0)
  hdr.pid = ibuf->pid;
 if ((wbuf = ibuf_dynamic(datalen, MAX_IMSGSIZE)) == ((void*)0)) {
  return (((void*)0));
 }
 if (imsg_add(wbuf, &hdr, sizeof(hdr)) == -1)
  return (((void*)0));

 return (wbuf);
}
