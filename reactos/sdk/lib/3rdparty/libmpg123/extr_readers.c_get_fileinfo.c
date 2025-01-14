
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_6__ {int rdat; scalar_t__ id3buf; TYPE_1__* rd; } ;
typedef TYPE_2__ mpg123_handle ;
struct TYPE_5__ {int (* fullread ) (TYPE_2__*,unsigned char*,int) ;} ;


 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ io_seek (int *,int,int ) ;
 int strncmp (char*,char*,int) ;
 int stub1 (TYPE_2__*,unsigned char*,int) ;

__attribute__((used)) static off_t get_fileinfo(mpg123_handle *fr)
{
 off_t len;

 if((len=io_seek(&fr->rdat,0,SEEK_END)) < 0) return -1;

 if(io_seek(&fr->rdat,-128,SEEK_END) < 0) return -1;

 if(fr->rd->fullread(fr,(unsigned char *)fr->id3buf,128) != 128) return -1;

 if(!strncmp((char*)fr->id3buf,"TAG",3)) len -= 128;

 if(io_seek(&fr->rdat,0,SEEK_SET) < 0) return -1;

 if(len <= 0) return -1;

 return len;
}
