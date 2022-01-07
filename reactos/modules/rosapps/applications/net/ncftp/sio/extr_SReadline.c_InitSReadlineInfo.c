
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int malloc; char* buf; size_t bufSize; size_t bufSizeMax; char* bufLim; int fd; int timeoutLen; int requireEOLN; char* bufPtr; } ;
typedef TYPE_1__ SReadlineInfo ;


 scalar_t__ malloc (size_t) ;
 int memset (char*,int ,size_t) ;

int
InitSReadlineInfo(SReadlineInfo *srl, int fd, char *buf, size_t bsize, int tlen, int requireEOLN)
{
 if (buf == ((void*)0)) {
  if (bsize < 512)
   bsize = 512;
  buf = (char *) malloc(bsize);
  if (buf == ((void*)0))
   return (-1);
  srl->malloc = 1;
 } else {
  srl->malloc = 0;
 }
 memset(buf, 0, bsize);
 srl->buf = buf;
 srl->bufSize = bsize;
 srl->bufSizeMax = bsize;
 srl->bufLim = srl->buf + bsize;
 srl->fd = fd;
 srl->timeoutLen = tlen;
 srl->requireEOLN = requireEOLN;





 srl->bufPtr = srl->bufLim;
 return (0);
}
