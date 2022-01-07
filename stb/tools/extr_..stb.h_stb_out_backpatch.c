
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint ;
typedef int stb_uchar ;


 int SEEK_SET ;
 int fseek (int ,int,int ) ;
 int ftell (int ) ;
 int fwrite (int *,int,int,int ) ;
 int memcpy (void*,int *,int) ;
 scalar_t__ stb__out ;
 int stb__outfile ;

__attribute__((used)) static void stb_out_backpatch(size_t id, stb_uint value)
{
   stb_uchar data[4] = { (stb_uchar)(value >> 24), (stb_uchar)(value >> 16), (stb_uchar)(value >> 8), (stb_uchar)(value) };
   if (stb__out) {
      memcpy((void *) id, data, 4);
   } else {
      stb_uint where = ftell(stb__outfile);
      fseek(stb__outfile, (long) id, SEEK_SET);
      fwrite(data, 4, 1, stb__outfile);
      fseek(stb__outfile, where, SEEK_SET);
   }
}
