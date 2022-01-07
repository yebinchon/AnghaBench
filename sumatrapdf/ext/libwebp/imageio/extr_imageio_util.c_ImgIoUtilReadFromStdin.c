
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int ImgIoUtilSetBinaryMode (int ) ;
 int feof (int ) ;
 scalar_t__ ferror (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ fread (char*,int,size_t const,int ) ;
 int free (char*) ;
 void* realloc (char*,size_t) ;
 int stderr ;
 int stdin ;

int ImgIoUtilReadFromStdin(const uint8_t** data, size_t* data_size) {
  static const size_t kBlockSize = 16384;
  size_t max_size = 0;
  size_t size = 0;
  uint8_t* input = ((void*)0);

  if (data == ((void*)0) || data_size == ((void*)0)) return 0;
  *data = ((void*)0);
  *data_size = 0;

  if (!ImgIoUtilSetBinaryMode(stdin)) return 0;

  while (!feof(stdin)) {

    const size_t extra_size = (max_size == 0) ? kBlockSize : max_size;

    void* const new_data = realloc(input, max_size + extra_size + 1);
    if (new_data == ((void*)0)) goto Error;
    input = (uint8_t*)new_data;
    max_size += extra_size;
    size += fread(input + size, 1, extra_size, stdin);
    if (size < max_size) break;
  }
  if (ferror(stdin)) goto Error;
  if (input != ((void*)0)) input[size] = '\0';
  *data = input;
  *data_size = size;
  return 1;

 Error:
  free(input);
  fprintf(stderr, "Could not read from stdin\n");
  return 0;
}
