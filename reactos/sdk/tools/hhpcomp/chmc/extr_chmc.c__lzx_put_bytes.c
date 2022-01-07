
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct chmcSect0 {int file_len; } ;
struct chmcLzxInfo {TYPE_2__* section; TYPE_1__* chm; } ;
struct TYPE_4__ {int len; int fd; } ;
struct TYPE_3__ {struct chmcSect0 sect0; } ;


 int write (int ,void*,int) ;

__attribute__((used)) static int _lzx_put_bytes(void *arg, int n, void *buf)
{
 struct chmcLzxInfo *lzx_info = (struct chmcLzxInfo *)arg;
 struct chmcSect0 *sect0 = &lzx_info->chm->sect0;
 int wx;
 static int counter = 0;

 counter += n;
 wx = write(lzx_info->section->fd, buf, n);
 sect0->file_len += wx;
 lzx_info->section->len += wx;

 return wx;
}
