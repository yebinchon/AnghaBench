
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int buffer; } ;
struct TYPE_5__ {TYPE_1__ rdat; } ;
typedef TYPE_2__ mpg123_handle ;


 scalar_t__ READER_ERROR ;
 scalar_t__ bc_give (int *,unsigned char*,scalar_t__) ;

__attribute__((used)) static ssize_t feed_read(mpg123_handle *fr, unsigned char *out, ssize_t count)
{
 ssize_t gotcount = bc_give(&fr->rdat.buffer, out, count);
 if(gotcount >= 0 && gotcount != count) return READER_ERROR;
 else return gotcount;
}
