
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD32 ;


 int bytestoword32 (int *,char const*) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int converte (WORD32 *x, const char *pt, int num, int old_status) {
  int new_status = 0;
  char buff[64];
  if (num<64) {
    memcpy(buff, pt, num);
    memset(buff+num, 0, 64-num);
    if (old_status == 0)
      buff[num] = '\200';
    new_status = 1;
    pt = buff;
  }
  bytestoword32(x, pt);
  if (num <= (64 - 9))
    new_status = 2;
  return new_status;
}
