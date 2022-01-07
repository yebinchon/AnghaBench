
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int DEBUGLOG (int,char*,char const*) ;
 int FUZZ_ASSERT_MSG (int,char const*) ;
 int LLVMFuzzerTestOneInput (int *,size_t const) ;
 char** UTIL_createFileList (char const**,unsigned int,char**,unsigned int*,int const) ;
 int UTIL_freeFileList (char const**,char*) ;
 size_t UTIL_getFileSize (char const*) ;
 int UTIL_isRegularFile (char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 size_t fread (int *,int,size_t const,int *) ;
 int free (int *) ;
 scalar_t__ malloc (size_t const) ;
 int stderr ;

int main(int argc, char const **argv) {
  size_t const kMaxFileSize = (size_t)1 << 27;
  int const kFollowLinks = 1;
  char *fileNamesBuf = ((void*)0);
  char const **files = argv + 1;
  unsigned numFiles = argc - 1;
  uint8_t *buffer = ((void*)0);
  size_t bufferSize = 0;
  unsigned i;
  int ret;







  if (numFiles == 0)
    fprintf(stderr, "WARNING: No files passed to %s\n", argv[0]);
  for (i = 0; i < numFiles; ++i) {
    char const *fileName = files[i];
    DEBUGLOG(3, "Running %s", fileName);
    size_t const fileSize = UTIL_getFileSize(fileName);
    size_t readSize;
    FILE *file;





    if (!UTIL_isRegularFile(fileName)) {
      continue;
    }
    FUZZ_ASSERT_MSG(fileSize <= kMaxFileSize, fileName);

    if (fileSize > bufferSize) {
      free(buffer);
      buffer = (uint8_t *)malloc(fileSize);
      FUZZ_ASSERT_MSG(buffer, fileName);
      bufferSize = fileSize;
    }

    file = fopen(fileName, "rb");
    FUZZ_ASSERT_MSG(file, fileName);

    readSize = fread(buffer, 1, fileSize, file);
    FUZZ_ASSERT_MSG(readSize == fileSize, fileName);

    fclose(file);

    LLVMFuzzerTestOneInput(buffer, fileSize);
  }

  ret = 0;
  free(buffer);



  return ret;
}
