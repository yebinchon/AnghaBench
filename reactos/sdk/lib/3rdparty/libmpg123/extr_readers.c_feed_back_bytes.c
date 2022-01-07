
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_5__ {int buffer; } ;
struct TYPE_6__ {TYPE_1__ rdat; } ;
typedef TYPE_2__ mpg123_handle ;


 int READER_ERROR ;
 scalar_t__ bc_seekback (int *,int ) ;
 scalar_t__ feed_skip_bytes (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int feed_back_bytes(mpg123_handle *fr, off_t bytes)
{
 if(bytes >=0)
 return bc_seekback(&fr->rdat.buffer, (ssize_t)bytes) >= 0 ? 0 : READER_ERROR;
 else
 return feed_skip_bytes(fr, -bytes) >= 0 ? 0 : READER_ERROR;
}
