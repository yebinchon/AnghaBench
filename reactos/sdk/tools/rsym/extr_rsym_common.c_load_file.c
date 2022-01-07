
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (void*,int,size_t,int *) ;
 int free (void*) ;
 int fseek (int *,long,int ) ;
 size_t ftell (int *) ;
 void* malloc (size_t) ;

void*
load_file ( const char* file_name, size_t* file_size )
{
 FILE* f;
 void* FileData = ((void*)0);

 f = fopen ( file_name, "rb" );
 if (f != ((void*)0))
 {
  fseek(f, 0L, SEEK_END);
  *file_size = ftell(f);
  fseek(f, 0L, SEEK_SET);
  FileData = malloc(*file_size);
  if (FileData != ((void*)0))
  {
   if ( *file_size != fread(FileData, 1, *file_size, f) )
   {
    free(FileData);
    FileData = ((void*)0);
   }
  }
  fclose(f);
 }
 return FileData;
}
