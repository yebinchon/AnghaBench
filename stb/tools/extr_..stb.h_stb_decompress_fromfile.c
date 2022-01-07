
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int fread (unsigned char*,int,unsigned int,int *) ;
 int free (unsigned char*) ;
 int fseek (int *,int ,int ) ;
 unsigned int ftell (int *) ;
 scalar_t__ malloc (int) ;
 unsigned int stb_decompress (unsigned char*,unsigned char*,unsigned int) ;
 int stb_decompress_length (unsigned char*) ;
 int * stb_p_fopen (char*,char*) ;

char *stb_decompress_fromfile(char *filename, unsigned int *len)
{
   unsigned int n;
   char *q;
   unsigned char *p;
   FILE *f = stb_p_fopen(filename, "rb"); if (f == ((void*)0)) return ((void*)0);
   fseek(f, 0, SEEK_END);
   n = ftell(f);
   fseek(f, 0, SEEK_SET);
   p = (unsigned char * ) malloc(n); if (p == ((void*)0)) return ((void*)0);
   fread(p, 1, n, f);
   fclose(f);
   if (p == ((void*)0)) return ((void*)0);
   if (p[0] != 0x57 || p[1] != 0xBc || p[2] || p[3]) { free(p); return ((void*)0); }
   q = (char *) malloc(stb_decompress_length(p)+1);
   if (!q) { free(p); return ((void*)0); }
   *len = stb_decompress((unsigned char *) q, p, n);
   if (*len) q[*len] = 0;
   free(p);
   return q;
}
