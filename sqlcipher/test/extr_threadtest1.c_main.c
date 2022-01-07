
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int atoi (char*) ;
 int free (char*) ;
 int lock ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int ,int ,void*) ;
 int pthread_detach (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sig ;
 int sprintf (char*,char*,int) ;
 char* sqlite3_mprintf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ thread_cnt ;
 int unlink (char*) ;
 int verbose ;
 int worker_bee ;

int main(int argc, char **argv){
  char *zFile;
  int i, n;
  pthread_t id;
  if( argc>2 && strcmp(argv[1], "-v")==0 ){
    verbose = 1;
    argc--;
    argv++;
  }
  if( argc<2 || (n=atoi(argv[1]))<1 ) n = 10;
  for(i=0; i<n; i++){
    char zBuf[200];
    sprintf(zBuf, "testdb-%d", (i+1)/2);
    unlink(zBuf);
  }
  for(i=0; i<n; i++){
    zFile = sqlite3_mprintf("%d.testdb-%d", i%2+1, (i+2)/2);
    if( (i%2)==0 ){


      char *zDb = &zFile[2];
      char *zJournal = sqlite3_mprintf("%s-journal", zDb);
      unlink(zDb);
      unlink(zJournal);
      free(zJournal);
    }

    pthread_create(&id, 0, worker_bee, (void*)zFile);
    pthread_detach(id);
  }
  pthread_mutex_lock(&lock);
  while( thread_cnt>0 ){
    pthread_cond_wait(&sig, &lock);
  }
  pthread_mutex_unlock(&lock);
  for(i=0; i<n; i++){
    char zBuf[200];
    sprintf(zBuf, "testdb-%d", (i+1)/2);
    unlink(zBuf);
  }
  return 0;
}
