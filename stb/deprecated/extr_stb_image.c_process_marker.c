
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* stbi__uint8 ;
struct TYPE_7__ {int restart_interval; int s; TYPE_2__* huff_ac; TYPE_1__* huff_dc; void*** dequant; void*** dequant2; } ;
typedef TYPE_3__ jpeg ;
struct TYPE_6__ {void** values; } ;
struct TYPE_5__ {void** values; } ;



 int build_huffman (int ,int*) ;
 size_t* dezigzag ;
 int e (char*,char*) ;
 int get16 (int ) ;
 int get8 (int ) ;
 void* get8u (int ) ;
 int skip (int ,int) ;

__attribute__((used)) static int process_marker(jpeg *z, int m)
{
   int L;
   switch (m) {
      case 128:
         return e("expected marker","Corrupt JPEG");

      case 0xC2:
         return e("progressive jpeg","JPEG format not supported (progressive)");

      case 0xDD:
         if (get16(z->s) != 4) return e("bad DRI len","Corrupt JPEG");
         z->restart_interval = get16(z->s);
         return 1;

      case 0xDB:
         L = get16(z->s)-2;
         while (L > 0) {
            int q = get8(z->s);
            int p = q >> 4;
            int t = q & 15,i;
            if (p != 0) return e("bad DQT type","Corrupt JPEG");
            if (t > 3) return e("bad DQT table","Corrupt JPEG");
            for (i=0; i < 64; ++i)
               z->dequant[t][dezigzag[i]] = get8u(z->s);




            L -= 65;
         }
         return L==0;

      case 0xC4:
         L = get16(z->s)-2;
         while (L > 0) {
            stbi__uint8 *v;
            int sizes[16],i,n=0;
            int q = get8(z->s);
            int tc = q >> 4;
            int th = q & 15;
            if (tc > 1 || th > 3) return e("bad DHT header","Corrupt JPEG");
            for (i=0; i < 16; ++i) {
               sizes[i] = get8(z->s);
               n += sizes[i];
            }
            L -= 17;
            if (tc == 0) {
               if (!build_huffman(z->huff_dc+th, sizes)) return 0;
               v = z->huff_dc[th].values;
            } else {
               if (!build_huffman(z->huff_ac+th, sizes)) return 0;
               v = z->huff_ac[th].values;
            }
            for (i=0; i < n; ++i)
               v[i] = get8u(z->s);
            L -= n;
         }
         return L==0;
   }

   if ((m >= 0xE0 && m <= 0xEF) || m == 0xFE) {
      skip(z->s, get16(z->s)-2);
      return 1;
   }
   return 0;
}
