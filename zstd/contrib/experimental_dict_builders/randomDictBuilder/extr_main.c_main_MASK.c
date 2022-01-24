#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sampleInfo ;
struct TYPE_5__ {int notificationLevel; unsigned int dictID; int /*<<< orphan*/  compressionLevel; } ;
struct TYPE_4__ {unsigned int k; TYPE_2__ zParams; } ;
typedef  TYPE_1__ ZDICT_random_params_t ;
typedef  TYPE_2__ ZDICT_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CLEVEL ; 
 unsigned int DEFAULT_DICTID ; 
 char* DEFAULT_OUTPUTFILE ; 
 unsigned int DEFAULT_k ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,unsigned int,TYPE_1__*) ; 
 char** FUNC2 (char const**,unsigned int,char**,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int g_defaultMaxDictSize ; 
 int /*<<< orphan*/ * FUNC6 (char const**,unsigned int,size_t,unsigned int,int) ; 
 scalar_t__ FUNC7 (char const**,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 unsigned int FUNC9 (char const**) ; 

int FUNC10(int argCount, const char* argv[])
{
  int displayLevel = 2;
  const char* programName = argv[0];
  int operationResult = 0;

  /* Initialize arguments to default values */
  unsigned k = DEFAULT_k;
  const char* outputFile = DEFAULT_OUTPUTFILE;
  unsigned dictID = DEFAULT_DICTID;
  unsigned maxDictSize = g_defaultMaxDictSize;

  /* Initialize table to store input files */
  const char** filenameTable = (const char**)FUNC8(argCount * sizeof(const char*));
  unsigned filenameIdx = 0;

  /* Parse arguments */
  for (int i = 1; i < argCount; i++) {
    const char* argument = argv[i];
    if (FUNC7(&argument, "k=")) { k = FUNC9(&argument); continue; }
    if (FUNC7(&argument, "dictID=")) { dictID = FUNC9(&argument); continue; }
    if (FUNC7(&argument, "maxdict=")) { maxDictSize = FUNC9(&argument); continue; }
    if (FUNC7(&argument, "in=")) {
      filenameTable[filenameIdx] = argument;
      filenameIdx++;
      continue;
    }
    if (FUNC7(&argument, "out=")) {
      outputFile = argument;
      continue;
    }
    FUNC0(1, "Incorrect parameters\n");
    operationResult = 1;
    return operationResult;
  }

  char* fileNamesBuf = NULL;
  unsigned fileNamesNb = filenameIdx;
  int followLinks = 0; /* follow directory recursively */
  const char** extendedFileList = NULL;
  extendedFileList = FUNC2(filenameTable, filenameIdx, &fileNamesBuf,
                                        &fileNamesNb, followLinks);
  if (extendedFileList) {
      unsigned u;
      for (u=0; u<fileNamesNb; u++) FUNC0(4, "%u %s\n", u, extendedFileList[u]);
      FUNC4((void*)filenameTable);
      filenameTable = extendedFileList;
      filenameIdx = fileNamesNb;
  }

  size_t blockSize = 0;

  ZDICT_random_params_t params;
  ZDICT_params_t zParams;
  zParams.compressionLevel = DEFAULT_CLEVEL;
  zParams.notificationLevel = displayLevel;
  zParams.dictID = dictID;
  params.zParams = zParams;
  params.k = k;

  sampleInfo* info = FUNC6(filenameTable,
                    filenameIdx, blockSize, maxDictSize, zParams.notificationLevel);
  operationResult = FUNC1(outputFile, info, maxDictSize, &params);

  /* Free allocated memory */
  FUNC3(extendedFileList, fileNamesBuf);
  FUNC5(info);

  return operationResult;
}