
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int W_CHAR ;
typedef int FILE ;


 int * ImgIoUtilSetBinaryMode (int *) ;
 int * WFOPEN (char const* const,char*) ;
 int WFPRINTF (int ,char*,int const*) ;
 int WSTRCMP (char const* const,char*) ;
 int fclose (int *) ;
 int fwrite (int const*,size_t,int,int *) ;
 int stderr ;
 int * stdout ;

int ImgIoUtilWriteFile(const char* const file_name,
                       const uint8_t* data, size_t data_size) {
  int ok;
  FILE* out;
  const int to_stdout = (file_name == ((void*)0)) || !WSTRCMP(file_name, "-");

  if (data == ((void*)0)) {
    return 0;
  }
  out = to_stdout ? ImgIoUtilSetBinaryMode(stdout) : WFOPEN(file_name, "wb");
  if (out == ((void*)0)) {
    WFPRINTF(stderr, "Error! Cannot open output file '%s'\n",
             (const W_CHAR*)file_name);
    return 0;
  }
  ok = (fwrite(data, data_size, 1, out) == 1);
  if (out != stdout) fclose(out);
  return ok;
}
