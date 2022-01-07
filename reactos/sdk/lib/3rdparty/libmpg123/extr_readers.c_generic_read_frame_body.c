
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd; } ;
typedef TYPE_2__ mpg123_handle ;
struct TYPE_5__ {long (* fullread ) (TYPE_2__*,unsigned char*,int) ;} ;


 int READER_MORE ;
 long stub1 (TYPE_2__*,unsigned char*,int) ;

__attribute__((used)) static int generic_read_frame_body(mpg123_handle *fr,unsigned char *buf, int size)
{
 long l;

 if((l=fr->rd->fullread(fr,buf,size)) != size)
 {
  long ll = l;
  if(ll <= 0) ll = 0;
  return READER_MORE;
 }
 return l;
}
