
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int block_buf_size; int chars_in_buf; int (* get_chars ) (TYPE_1__*,int,int *) ;scalar_t__ eofcount; int * block_buf; } ;
typedef TYPE_1__ lz_info ;


 scalar_t__ lz_left_to_process (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int,int *) ;

__attribute__((used)) static void
fill_blockbuf(lz_info *lzi, int maxchars)
{
  int toread;
  u_char *readhere;
  int nread;

  if (lzi->eofcount) return;
  maxchars -= lz_left_to_process(lzi);
  toread = lzi->block_buf_size - lzi->chars_in_buf;
  if (toread > maxchars) toread = maxchars;
  readhere = lzi->block_buf + lzi->chars_in_buf;
  nread = lzi->get_chars(lzi, toread, readhere);
  lzi->chars_in_buf += nread;
  if (nread != toread)
    lzi->eofcount++;
}
