#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t const) ; 
 char** FUNC3 (char const**,unsigned int,char**,unsigned int*,int const) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char*) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 
 size_t FUNC10 (int /*<<< orphan*/ *,int,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (size_t const) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13(int argc, char const **argv) {
  size_t const kMaxFileSize = (size_t)1 << 27;
  int const kFollowLinks = 1;
  char *fileNamesBuf = NULL;
  char const **files = argv + 1;
  unsigned numFiles = argc - 1;
  uint8_t *buffer = NULL;
  size_t bufferSize = 0;
  unsigned i;
  int ret;

#ifdef UTIL_HAS_CREATEFILELIST
  files = UTIL_createFileList(files, numFiles, &fileNamesBuf, &numFiles,
                              kFollowLinks);
  if (!files)
    numFiles = 0;
#endif
  if (numFiles == 0)
    FUNC9(stderr, "WARNING: No files passed to %s\n", argv[0]);
  for (i = 0; i < numFiles; ++i) {
    char const *fileName = files[i];
    FUNC0(3, "Running %s", fileName);
    size_t const fileSize = FUNC5(fileName);
    size_t readSize;
    FILE *file;

    /* Check that it is a regular file, and that the fileSize is valid.
     * If it is not a regular file, then it may have been deleted since we
     * constructed the list, so just skip it.
     */
    if (!FUNC6(fileName)) {
      continue;
    }
    FUNC1(fileSize <= kMaxFileSize, fileName);
    /* Ensure we have a large enough buffer allocated */
    if (fileSize > bufferSize) {
      FUNC11(buffer);
      buffer = (uint8_t *)FUNC12(fileSize);
      FUNC1(*buffer, fileName);
      bufferSize = fileSize;
    }
    /* Open the file */
    file = FUNC8(fileName, "rb");
    FUNC1(*file, fileName);
    /* Read the file */
    readSize = FUNC10(buffer, 1, fileSize, file);
    FUNC1(readSize == fileSize, fileName);
    /* Close the file */
    FUNC7(file);
    /* Run the fuzz target */
    FUNC2(buffer, fileSize);
  }

  ret = 0;
  FUNC11(buffer);
#ifdef UTIL_HAS_CREATEFILELIST
  UTIL_freeFileList(files, fileNamesBuf);
#endif
  return ret;
}