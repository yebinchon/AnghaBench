
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* img_comp; } ;
typedef TYPE_2__ jpeg ;
typedef int huffman ;
typedef int data ;
struct TYPE_6__ {int dc_pred; } ;


 int decode (TYPE_2__*,int *) ;
 size_t* dezigzag ;
 int e (char*,char*) ;
 int extend_receive (TYPE_2__*,int) ;
 int memset (short*,int ,int) ;

__attribute__((used)) static int decode_block(jpeg *j, short data[64], huffman *hdc, huffman *hac, int b)
{
   int diff,dc,k;
   int t = decode(j, hdc);
   if (t < 0) return e("bad huffman code","Corrupt JPEG");


   memset(data,0,64*sizeof(data[0]));

   diff = t ? extend_receive(j, t) : 0;
   dc = j->img_comp[b].dc_pred + diff;
   j->img_comp[b].dc_pred = dc;
   data[0] = (short) dc;


   k = 1;
   do {
      int r,s;
      int rs = decode(j, hac);
      if (rs < 0) return e("bad huffman code","Corrupt JPEG");
      s = rs & 15;
      r = rs >> 4;
      if (s == 0) {
         if (rs != 0xf0) break;
         k += 16;
      } else {
         k += r;

         data[dezigzag[k++]] = (short) extend_receive(j,s);
      }
   } while (k < 64);
   return 1;
}
