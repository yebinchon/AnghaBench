
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_END ;
 int SEEK_SET ;
 int exit (int) ;
 int fclose (int *) ;
 int * file_buffer ;
 int * file_handle ;
 scalar_t__ file_pointer ;
 scalar_t__ file_size ;
 int * fopen (char*,char*) ;
 int fread (int *,int,scalar_t__,int *) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ ftell (int *) ;
 int * malloc (scalar_t__) ;
 int printf (char*,...) ;

__attribute__((used)) static void
read_file(char *filename)
{
  file_handle = fopen(filename, "rb");
  if (file_handle == ((void*)0))
    {
      printf("Can't open %s\n", filename);
      exit(1);
    }


  fseek(file_handle, 0, SEEK_END);
  file_size = ftell(file_handle);


  file_buffer = malloc(file_size);
  if (file_buffer == ((void*)0))
    {
      fclose(file_handle);
      printf("Out of memory\n");
      exit(1);
    }
  fseek(file_handle, 0, SEEK_SET);
  if (file_size > 0)
    {
      if (fread (file_buffer, 1, file_size, file_handle) < 1)
        {
          fclose(file_handle);
          printf("Read error in file %s\n", filename);
          exit(1);
        }
    }

  file_pointer = 0;
}
