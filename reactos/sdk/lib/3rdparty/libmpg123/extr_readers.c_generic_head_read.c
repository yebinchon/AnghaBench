
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd; } ;
typedef TYPE_2__ mpg123_handle ;
struct TYPE_5__ {int (* fullread ) (TYPE_2__*,unsigned char*,int) ;} ;


 int FALSE ;
 int READER_MORE ;
 int TRUE ;
 int stub1 (TYPE_2__*,unsigned char*,int) ;

__attribute__((used)) static int generic_head_read(mpg123_handle *fr,unsigned long *newhead)
{
 unsigned char hbuf[4];
 int ret = fr->rd->fullread(fr,hbuf,4);
 if(ret == READER_MORE) return ret;
 if(ret != 4) return FALSE;

 *newhead = ((unsigned long) hbuf[0] << 24) |
            ((unsigned long) hbuf[1] << 16) |
            ((unsigned long) hbuf[2] << 8) |
             (unsigned long) hbuf[3];

 return TRUE;
}
