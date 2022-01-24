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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sig ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ thread_cnt ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int verbose ; 
 int /*<<< orphan*/  worker_bee ; 

int FUNC11(int argc, char **argv){
  char *zFile;
  int i, n;
  pthread_t id;
  if( argc>2 && FUNC9(argv[1], "-v")==0 ){
    verbose = 1;
    argc--;
    argv++;
  }
  if( argc<2 || (n=FUNC0(argv[1]))<1 ) n = 10;
  for(i=0; i<n; i++){
    char zBuf[200];
    FUNC7(zBuf, "testdb-%d", (i+1)/2);
    FUNC10(zBuf);
  }
  for(i=0; i<n; i++){
    zFile = FUNC8("%d.testdb-%d", i%2+1, (i+2)/2);
    if( (i%2)==0 ){
      /* Remove both the database file and any old journal for the file
      ** being used by this thread and the next one. */
      char *zDb = &zFile[2];
      char *zJournal = FUNC8("%s-journal", zDb);
      FUNC10(zDb);
      FUNC10(zJournal);
      FUNC1(zJournal);
    }
      
    FUNC3(&id, 0, worker_bee, (void*)zFile);
    FUNC4(id);
  }
  FUNC5(&lock);
  while( thread_cnt>0 ){
    FUNC2(&sig, &lock);
  }
  FUNC6(&lock);
  for(i=0; i<n; i++){
    char zBuf[200];
    FUNC7(zBuf, "testdb-%d", (i+1)/2);
    FUNC10(zBuf);
  }
  return 0;
}