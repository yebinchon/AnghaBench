
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 char* _tempnam (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fputc (int,int *) ;
 int free (char*) ;
 int ok (int,char*,int,int) ;
 int unlink (char*) ;

__attribute__((used)) static void test_fputc( void )
{
  char* tempf;
  FILE *tempfh;
  int ret;

  tempf=_tempnam(".","wne");
  tempfh = fopen(tempf,"wb");
  ret = fputc(0,tempfh);
  ok(0 == ret, "fputc(0,tempfh) expected %x got %x\n", 0, ret);
  ret = fputc(0xff,tempfh);
  ok(0xff == ret, "fputc(0xff,tempfh) expected %x got %x\n", 0xff, ret);
  ret = fputc(0xffffffff,tempfh);
  ok(0xff == ret, "fputc(0xffffffff,tempfh) expected %x got %x\n", 0xff, ret);
  fclose(tempfh);

  tempfh = fopen(tempf,"rb");
  ret = fputc(0,tempfh);
  ok(EOF == ret, "fputc(0,tempfh) on r/o file expected %x got %x\n", EOF, ret);
  fclose(tempfh);

  unlink(tempf);
  free(tempf);
}
