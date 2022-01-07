
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD32 ;


 int converte (scalar_t__*,char const*,int,int) ;
 int digest (scalar_t__*,scalar_t__*) ;
 int inic_digest (scalar_t__*) ;
 int put_length (scalar_t__*,long) ;
 int word32tobytes (scalar_t__*,char*) ;

void md5 (const char *message, long len, char *output) {
  WORD32 d[4];
  int status = 0;
  long i = 0;
  inic_digest(d);
  while (status != 2) {
    WORD32 d_old[4];
    WORD32 wbuff[16];
    int numbytes = (len-i >= 64) ? 64 : len-i;

    d_old[0]=d[0]; d_old[1]=d[1]; d_old[2]=d[2]; d_old[3]=d[3];
    status = converte(wbuff, message+i, numbytes, status);
    if (status == 2) put_length(wbuff, len);
    digest(wbuff, d);
    d[0]+=d_old[0]; d[1]+=d_old[1]; d[2]+=d_old[2]; d[3]+=d_old[3];
    i += numbytes;
  }
  word32tobytes(d, output);
}
