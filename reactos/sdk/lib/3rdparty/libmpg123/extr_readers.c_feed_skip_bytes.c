
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_7__ {scalar_t__ fileoff; } ;
struct TYPE_5__ {TYPE_4__ buffer; } ;
struct TYPE_6__ {TYPE_1__ rdat; } ;
typedef TYPE_2__ mpg123_handle ;


 scalar_t__ bc_skip (TYPE_4__*,int ) ;

__attribute__((used)) static off_t feed_skip_bytes(mpg123_handle *fr,off_t len)
{

 off_t res = bc_skip(&fr->rdat.buffer, (ssize_t)len);
 if(res < 0) return res;

 return fr->rdat.buffer.fileoff+res;
}
