
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int findAllSideEffects (char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* readFile (char*) ;
 int stderr ;

int main(int argc, char **argv){
  char *z;
  unsigned int nErr = 0;
  if( argc!=2 ){
    fprintf(stderr, "Usage: %s FILENAME\n", argv[0]);
    return 1;
  }
  z = readFile(argv[1]);
  nErr = findAllSideEffects(z);
  free(z);
  if( nErr ){
    fprintf(stderr, "Found %u undesirable side-effects\n", nErr);
    return 1;
  }
  return 0;
}
