
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int stbi ;


 scalar_t__ at_eof (int *) ;
 int * convert_format (int *,int,int,int,int) ;
 int * epuc (char*,char*) ;
 int free (int *) ;
 int get16 (int *) ;
 int get32 (int *) ;
 int get8 (int *) ;
 scalar_t__ malloc (int) ;
 int memset (int *,int,int) ;
 int pic_load2 (int *,int,int,int*,int *) ;

__attribute__((used)) static stbi_uc *pic_load(stbi *s,int *px,int *py,int *comp,int req_comp)
{
   stbi_uc *result;
   int i, x,y;

   for (i=0; i<92; ++i)
      get8(s);

   x = get16(s);
   y = get16(s);
   if (at_eof(s)) return epuc("bad file","file too short (pic header)");
   if ((1 << 28) / x < y) return epuc("too large", "Image too large to decode");

   get32(s);
   get16(s);
   get16(s);


   result = (stbi_uc *) malloc(x*y*4);
   memset(result, 0xff, x*y*4);

   if (!pic_load2(s,x,y,comp, result)) {
      free(result);
      result=0;
   }
   *px = x;
   *py = y;
   if (req_comp == 0) req_comp = *comp;
   result=convert_format(result,4,req_comp,x,y);

   return result;
}
