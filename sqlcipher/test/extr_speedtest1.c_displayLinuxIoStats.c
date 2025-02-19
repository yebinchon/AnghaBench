
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z ;
typedef int aTrans ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char const*,char*) ;
 int getpid () ;
 int sqlite3_snprintf (int,char*,char*,int ) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void displayLinuxIoStats(FILE *out){
  FILE *in;
  char z[200];
  sqlite3_snprintf(sizeof(z), z, "/proc/%d/io", getpid());
  in = fopen(z, "rb");
  if( in==0 ) return;
  while( fgets(z, sizeof(z), in)!=0 ){
    static const struct {
      const char *zPattern;
      const char *zDesc;
    } aTrans[] = {
      { "rchar: ", "Bytes received by read():" },
      { "wchar: ", "Bytes sent to write():" },
      { "syscr: ", "Read() system calls:" },
      { "syscw: ", "Write() system calls:" },
      { "read_bytes: ", "Bytes rcvd from storage:" },
      { "write_bytes: ", "Bytes sent to storage:" },
      { "cancelled_write_bytes: ", "Cancelled write bytes:" },
    };
    int i;
    for(i=0; i<sizeof(aTrans)/sizeof(aTrans[0]); i++){
      int n = (int)strlen(aTrans[i].zPattern);
      if( strncmp(aTrans[i].zPattern, z, n)==0 ){
        fprintf(out, "-- %-28s %s", aTrans[i].zDesc, &z[n]);
        break;
      }
    }
  }
  fclose(in);
}
