
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obuf ;
typedef int buf2 ;
typedef int buf1 ;
typedef int FILE ;


 int SEEK_SET ;
 int _fileno (int *) ;
 int _flushall () ;
 int _lseek (int ,int ,int ) ;
 char* _tempnam (char*,char*) ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fwrite (char const*,int,int,int *) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;
 int unlink (char*) ;

__attribute__((used)) static void test_fflush( void )
{
  static const char obuf[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
  char buf1[16], buf2[24];
  char *tempf;
  FILE *tempfh;
  int ret;

  tempf=_tempnam(".","wne");


  tempfh = fopen(tempf,"wb");
  ok(tempfh != ((void*)0), "Can't open test file.\n");
  fwrite(obuf, 1, sizeof(obuf), tempfh);
  fclose(tempfh);


  tempfh = fopen(tempf,"rb");
  ok(tempfh != ((void*)0), "Can't open test file.\n");
  fread(buf1, 1, sizeof(buf1), tempfh);



  _lseek(_fileno(tempfh), 0, SEEK_SET);
  ret = fflush(tempfh);
  ok(ret == 0, "expected 0, got %d\n", ret);
  memset(buf2, '?', sizeof(buf2));
  fread(buf2, 1, sizeof(buf2), tempfh);
  ok(memcmp(buf1, buf2, sizeof(buf1)) == 0, "Got unexpected data (%c)\n", buf2[0]);


  _lseek(_fileno(tempfh), 0, SEEK_SET);
  ret = fflush(((void*)0));
  ok(ret == 0, "expected 0, got %d\n", ret);
  memset(buf2, '?', sizeof(buf2));
  fread(buf2, 1, sizeof(buf2), tempfh);
  ok(memcmp(buf1, buf2, sizeof(buf1)) != 0, "Got unexpected data (%c)\n", buf2[0]);


  _lseek(_fileno(tempfh), 0, SEEK_SET);
  ret = _flushall();
  ok(ret >= 0, "unexpected ret %d\n", ret);
  memset(buf2, '?', sizeof(buf2));
  fread(buf2, 1, sizeof(buf2), tempfh);
  ok(memcmp(buf1, buf2, sizeof(buf1)) == 0, "Got unexpected data (%c)\n", buf2[0]);

  fclose(tempfh);

  unlink(tempf);
  free(tempf);
}
