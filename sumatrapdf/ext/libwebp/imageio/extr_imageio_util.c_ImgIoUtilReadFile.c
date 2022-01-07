
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int W_CHAR ;
typedef int FILE ;


 int ImgIoUtilReadFromStdin (char const**,size_t*) ;
 int SEEK_END ;
 int SEEK_SET ;
 int * WFOPEN (char const* const,char*) ;
 int WFPRINTF (int ,char*,int,...) ;
 int WSTRCMP (char const* const,char*) ;
 int fclose (int *) ;
 int fread (char*,size_t,int,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 scalar_t__ malloc (size_t) ;
 int stderr ;

int ImgIoUtilReadFile(const char* const file_name,
                      const uint8_t** data, size_t* data_size) {
  int ok;
  uint8_t* file_data;
  size_t file_size;
  FILE* in;
  const int from_stdin = (file_name == ((void*)0)) || !WSTRCMP(file_name, "-");

  if (from_stdin) return ImgIoUtilReadFromStdin(data, data_size);

  if (data == ((void*)0) || data_size == ((void*)0)) return 0;
  *data = ((void*)0);
  *data_size = 0;

  in = WFOPEN(file_name, "rb");
  if (in == ((void*)0)) {
    WFPRINTF(stderr, "cannot open input file '%s'\n", (const W_CHAR*)file_name);
    return 0;
  }
  fseek(in, 0, SEEK_END);
  file_size = ftell(in);
  fseek(in, 0, SEEK_SET);

  file_data = (uint8_t*)malloc(file_size + 1);
  if (file_data == ((void*)0)) {
    fclose(in);
    WFPRINTF(stderr, "memory allocation failure when reading file %s\n",
             (const W_CHAR*)file_name);
    return 0;
  }
  ok = (fread(file_data, file_size, 1, in) == 1);
  fclose(in);

  if (!ok) {
    WFPRINTF(stderr, "Could not read %d bytes of data from file %s\n",
             (int)file_size, (const W_CHAR*)file_name);
    free(file_data);
    return 0;
  }
  file_data[file_size] = '\0';
  *data = file_data;
  *data_size = file_size;
  return 1;
}
