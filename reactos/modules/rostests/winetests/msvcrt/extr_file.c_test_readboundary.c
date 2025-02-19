
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_CUR ;
 int fclose (int *) ;
 char fgetc (int *) ;
 int * fopen (char*,char*) ;
 int fseek (int *,int ,int ) ;
 int fwrite (char*,int,int,int *) ;
 int ok (int,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static void test_readboundary(void)
{
  FILE *fp;
  char buf[513], rbuf[513];
  int i, j;
  for (i = 0; i < 511; i++)
    {
      j = (i%('~' - ' ')+ ' ');
      buf[i] = j;
    }
  buf[511] = '\n';
  buf[512] =0;
  fp = fopen("boundary.tst", "wt");
  fwrite(buf, 512,1,fp);
  fclose(fp);
  fp = fopen("boundary.tst", "rt");
  for(i=0; i<512; i++)
    {
      fseek(fp,0 , SEEK_CUR);
      rbuf[i] = fgetc(fp);
    }
  rbuf[512] =0;
  fclose(fp);
  unlink("boundary.tst");

  ok(strcmp(buf, rbuf) == 0,"CRLF on buffer boundary failure\n");
  }
