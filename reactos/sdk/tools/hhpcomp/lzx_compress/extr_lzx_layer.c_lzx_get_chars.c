
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {scalar_t__ subdivide; int left_in_frame; int left_in_block; int (* get_bytes ) (int ,int,int *) ;int in_arg; } ;
typedef TYPE_1__ lzx_data ;
struct TYPE_5__ {scalar_t__ user_data; } ;
typedef TYPE_2__ lz_info ;


 int LZX_FRAME_SIZE ;
 int memset (int *,int ,int) ;
 int stub1 (int ,int,int *) ;

__attribute__((used)) static int
lzx_get_chars(lz_info *lzi, int n, u_char *buf)
{

  int chars_read;
  int chars_pad;

  lzx_data *lzud = (lzx_data *)lzi->user_data;







  chars_read = lzud->get_bytes(lzud->in_arg, n, buf);




  lzud->left_in_frame -= chars_read % LZX_FRAME_SIZE;
  if (lzud->left_in_frame < 0)
    lzud->left_in_frame += LZX_FRAME_SIZE;

  if ((chars_read < n) && (lzud->left_in_frame)) {
    chars_pad = n - chars_read;
    if (chars_pad > lzud->left_in_frame) chars_pad = lzud->left_in_frame;


    if (chars_pad == LZX_FRAME_SIZE) chars_pad = 0;



    memset(buf + chars_read, 0, chars_pad);
    lzud->left_in_frame -= chars_pad;



    chars_read += chars_pad;
  }
  return chars_read;
}
