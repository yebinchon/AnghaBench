
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcLzxInfo {scalar_t__ done; scalar_t__ todo; scalar_t__ eof; scalar_t__ error; } ;



__attribute__((used)) static int _lzx_at_eof(void *arg)
{
 struct chmcLzxInfo *lzx_info = (struct chmcLzxInfo *)arg;

 return lzx_info->error || lzx_info->done >= lzx_info->todo || lzx_info->eof;
}
