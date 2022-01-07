
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (void*,size_t,int,int *) ;
 int printf (char*,char const*) ;

__attribute__((used)) static int
saveFile(const char *fileName, void *file, size_t fileSize)
{
   FILE *f;


   f = fopen(fileName, "wb");
   if (f == ((void*)0))
   {
      printf("Couldn't open file %s for writing!\n", fileName);
      return -1;
   }


   if (fwrite(file, fileSize, 1, f) != 1)
   {
      fclose(f);
      printf("Couldn't write file %s!\n", fileName);
      return -1;
   }


   fclose(f);
   return 0;
}
