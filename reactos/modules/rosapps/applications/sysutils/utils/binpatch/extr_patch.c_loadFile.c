
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
typedef int FILE ;


 int _fileno (int *) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (void*,size_t,int,int *) ;
 int free (void*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 void* malloc (size_t) ;
 int printf (char*,...) ;

__attribute__((used)) static void *
loadFile(const char *fileName, size_t *fileSize_)
{
   FILE *f;
   struct stat sb;
   size_t fileSize;
   void *p;


   f = fopen(fileName, "rb");
   if (f == ((void*)0))
   {
      printf("Couldn't open file %s for reading!\n", fileName);
      return ((void*)0);
   }


   if (fstat(_fileno(f), &sb) < 0)
   {
      fclose(f);
      printf("Couldn't get size of file %s!\n", fileName);
      return ((void*)0);
   }
   fileSize = sb.st_size;


   p = malloc(fileSize);
   if (p == ((void*)0))
   {
      fclose(f);
      printf("Couldn't allocate %Id bytes for file %s!\n", fileSize, fileName);
      return ((void*)0);
   }

   if (fread(p, fileSize, 1, f) != 1)
   {
      fclose(f);
      free(p);
      printf("Couldn't read file %s into memory!\n", fileName);
      return ((void*)0);
   }


   fclose(f);

   *fileSize_ = fileSize;
   return p;
}
