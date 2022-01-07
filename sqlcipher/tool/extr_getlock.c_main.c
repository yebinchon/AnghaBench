
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int F_RDLCK ;
 int F_WRLCK ;
 int O_RDONLY ;
 scalar_t__ PENDING_BYTE ;
 scalar_t__ RESERVED_BYTE ;
 scalar_t__ SHARED_FIRST ;
 int SHARED_SIZE ;
 scalar_t__ SHM_CHECKPOINT ;
 scalar_t__ SHM_READ_FIRST ;
 int SHM_READ_SIZE ;
 scalar_t__ SHM_RECOVER ;
 scalar_t__ SHM_WRITE ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isLocked (int,int ,scalar_t__,int,char*) ;
 char* malloc (int) ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int open (char*,int ,int ) ;
 int printf (char*) ;
 int read (int,unsigned char*,int) ;
 int stderr ;
 scalar_t__ strlen (char*) ;
 int usage (char*) ;

int main(int argc, char **argv){
  int hDb;
  int hShm;
  char *zShm;
  ssize_t got;
  int isWal;
  int nName;
  unsigned char aHdr[100];
  int nLock = 0;
  int i;

  if( argc!=2 ) usage(argv[0]);
  hDb = open(argv[1], O_RDONLY, 0);
  if( hDb<0 ){
    fprintf(stderr, "cannot open %s\n", argv[1]);
    return 1;
  }


  got = read(hDb, aHdr, 100);
  if( got!=100 || memcmp(aHdr, "SQLite format 3",16)!=0 ){
    fprintf(stderr, "not an SQLite database: %s\n", argv[1]);
    exit(1);
  }


  if( isLocked(hDb, F_RDLCK, SHARED_FIRST, SHARED_SIZE, "EXCLUSIVE") ){
    return 0;
  }
  isWal = aHdr[18]==2;
  if( isWal==0 ){

    if( isLocked(hDb, F_RDLCK, PENDING_BYTE, 1, "PENDING") ) return 0;
    if( isLocked(hDb, F_RDLCK, RESERVED_BYTE, 1, "RESERVED") ) return 0;
    if( isLocked(hDb, F_WRLCK, SHARED_FIRST, SHARED_SIZE, "SHARED") ){
      return 0;
    }
  }else{

    nName = (int)strlen(argv[1]);
    zShm = malloc( nName + 100 );
    if( zShm==0 ){
      fprintf(stderr, "out of memory\n");
      exit(1);
    }
    memcpy(zShm, argv[1], nName);
    memcpy(&zShm[nName], "-shm", 5);
    hShm = open(zShm, O_RDONLY, 0);
    if( hShm<0 ){
      fprintf(stderr, "cannot open %s\n", zShm);
      return 1;
    }
    if( isLocked(hShm, F_RDLCK, SHM_RECOVER, 1, "WAL-RECOVERY") ){
      return 0;
    }
    nLock += isLocked(hShm, F_RDLCK, SHM_CHECKPOINT, 1, "WAL-CHECKPOINT");
    nLock += isLocked(hShm, F_RDLCK, SHM_WRITE, 1, "WAL-WRITE");
    for(i=0; i<SHM_READ_SIZE; i++){
      nLock += isLocked(hShm, F_WRLCK, SHM_READ_FIRST+i, 1, "WAL-READ");
    }
  }
  if( nLock==0 ){
    printf("file is not locked\n");
  }
  return 0;
}
