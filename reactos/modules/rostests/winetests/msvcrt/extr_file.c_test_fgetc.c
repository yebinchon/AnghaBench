
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _tempnam (char*,char*) ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fopen (char*,char*) ;
 int fputc (char,int *) ;
 int free (char*) ;
 int ok (int,char*,...) ;
 int rewind (int *) ;
 int setbuf (int *,int *) ;
 int unlink (char*) ;

__attribute__((used)) static void test_fgetc( void )
{
  char* tempf;
  FILE *tempfh;
  int ich=0xe0, ret;

  tempf=_tempnam(".","wne");
  tempfh = fopen(tempf,"w+");
  fputc(ich, tempfh);
  fputc(ich, tempfh);
  rewind(tempfh);
  ret = fgetc(tempfh);
  ok(ich == ret, "First fgetc expected %x got %x\n", ich, ret);
  ret = fgetc(tempfh);
  ok(ich == ret, "Second fgetc expected %x got %x\n", ich, ret);
  fclose(tempfh);
  tempfh = fopen(tempf,"wt");
  fputc('\n', tempfh);
  fclose(tempfh);
  tempfh = fopen(tempf,"wt");
  setbuf(tempfh, ((void*)0));
  ret = fgetc(tempfh);
  ok(ret == -1, "Unbuffered fgetc in text mode must failed on \\r\\n\n");
  fclose(tempfh);
  unlink(tempf);
  free(tempf);
}
