
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ raw; scalar_t__ compress; scalar_t__ embed_data; scalar_t__ largeblock; } ;
typedef TYPE_1__ sendflags_t ;
typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;


 int LZC_SEND_FLAG_COMPRESS ;
 int LZC_SEND_FLAG_EMBED_DATA ;
 int LZC_SEND_FLAG_LARGE_BLOCK ;
 int LZC_SEND_FLAG_RAW ;

__attribute__((used)) static enum lzc_send_flags
lzc_flags_from_sendflags(const sendflags_t *flags)
{
 enum lzc_send_flags lzc_flags = 0;
 if (flags->largeblock)
  lzc_flags |= LZC_SEND_FLAG_LARGE_BLOCK;
 if (flags->embed_data)
  lzc_flags |= LZC_SEND_FLAG_EMBED_DATA;
 if (flags->compress)
  lzc_flags |= LZC_SEND_FLAG_COMPRESS;
 if (flags->raw)
  lzc_flags |= LZC_SEND_FLAG_RAW;
 return (lzc_flags);
}
