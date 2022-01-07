
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int rdat; } ;
typedef TYPE_1__ mpg123_handle ;


 scalar_t__ VERBOSE3 ;
 int debug2 (char*,long,long) ;
 scalar_t__ io_read (int *,void*,size_t) ;

__attribute__((used)) static ssize_t plain_read(mpg123_handle *fr, void *buf, size_t count)
{
 ssize_t ret = io_read(&fr->rdat, buf, count);
 if(VERBOSE3) debug2("read %li bytes of %li", (long)ret, (long)count);
 return ret;
}
