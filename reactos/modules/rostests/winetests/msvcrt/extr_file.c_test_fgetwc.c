
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LONG ;
typedef int FILE ;
typedef int BOOL ;


 char* AtoW (char const*) ;
 int BUFSIZ ;
 int FALSE ;
 int LLEN ;
 char* _tempnam (char*,char*) ;
 int fclose (int *) ;
 unsigned int fgetc (int *) ;
 int fgetws (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fputc (int,int *) ;
 int fputs (char const*,int *) ;
 int fputwc (int,int *) ;
 int fputws (char*,int *) ;
 int free (char*) ;
 int ftell (int *) ;
 int lstrlenA (char const*) ;
 int ok (int,char*,...) ;
 int strlen (char const*) ;
 int unlink (char*) ;

__attribute__((used)) static void test_fgetwc( void )
{


  char* tempf;
  FILE *tempfh;
  static const char mytext[]= "This is test_fgetwc\r\n";
  WCHAR wtextW[BUFSIZ+512 +1];
  WCHAR *mytextW = ((void*)0), *aptr, *wptr;
  BOOL diff_found = FALSE;
  int j;
  unsigned int i;
  LONG l;

  tempf=_tempnam(".","wne");
  tempfh = fopen(tempf,"wb");
  j = 'a';

  for (i=0; i<BUFSIZ-4; i++)
    fputc(j,tempfh);
  j = '\r';
  fputc(j,tempfh);
  j = '\n';
  fputc(j,tempfh);
  fputs(mytext,tempfh);
  fclose(tempfh);


  tempfh = fopen(tempf,"rt");
  fgetws(wtextW,512,tempfh);
  l=ftell(tempfh);
  ok(l==BUFSIZ-2, "ftell expected %d got %d\n", BUFSIZ-2, l);
  fgetws(wtextW,512,tempfh);
  l=ftell(tempfh);
  ok(l==BUFSIZ-2+strlen(mytext), "ftell expected %d got %d\n", BUFSIZ-2+lstrlenA(mytext), l);
  mytextW = AtoW (mytext);
  aptr = mytextW;
  wptr = wtextW;
  for (i=0; i<strlen(mytext)-2; i++, aptr++, wptr++)
    {
      diff_found |= (*aptr != *wptr);
    }
  ok(!(diff_found), "fgetwc difference found in TEXT mode\n");
  ok(*wptr == '\n', "Carriage return was not skipped\n");
  fclose(tempfh);
  unlink(tempf);

  tempfh = fopen(tempf,"wb");
  j = 'a';



  for (i=0; i<BUFSIZ-3-strlen(mytext)*sizeof(WCHAR); i++)
    fputc(j,tempfh);
  j = '\r';
  fputwc(j,tempfh);
  j = '\n';
  fputwc(j,tempfh);
  fputws(wtextW,tempfh);
  fputws(wtextW,tempfh);
  fclose(tempfh);

  tempfh = fopen(tempf,"rb");
  j=(BUFSIZ-2)/sizeof(WCHAR)-strlen(mytext);
  fgetws(wtextW,j,tempfh);
  l=ftell(tempfh);
  j=(j-1)*sizeof(WCHAR);
  ok(l==j, "ftell expected %d got %d\n", j, l);
  i=fgetc(tempfh);
  ok(i=='a', "fgetc expected %d got %d\n", 0x61, i);
  l=ftell(tempfh);
  j++;
  ok(l==j, "ftell expected %d got %d\n", j, l);
  fgetws(wtextW,3,tempfh);
  ok(wtextW[0]=='\r',"expected carriage return got %04hx\n", wtextW[0]);
  ok(wtextW[1]=='\n',"expected newline got %04hx\n", wtextW[1]);
  l=ftell(tempfh);
  j += 4;
  ok(l==j, "ftell expected %d got %d\n", j, l);
  for(i=0; i<strlen(mytext); i++)
    wtextW[i] = 0;

  fgetws(wtextW,512,tempfh);
  l=ftell(tempfh);
  j += (strlen(mytext)-1)*sizeof(WCHAR);
  ok(l==j, "ftell expected %d got %d\n", j, l);
  diff_found = FALSE;
  aptr = mytextW;
  wptr = wtextW;
  for (i=0; i<strlen(mytext)-2; i++, aptr++, wptr++)
    {
      ok(*aptr == *wptr, "Char %d expected %04hx got %04hx\n", i, *aptr, *wptr);
      diff_found |= (*aptr != *wptr);
    }
  ok(!(diff_found), "fgetwc difference found in BINARY mode\n");
  ok(*wptr == '\n', "Should get newline\n");
  for(i=0; i<strlen(mytext); i++)
    wtextW[i] = 0;


  fgetws(wtextW,512,tempfh);
  diff_found = FALSE;
  aptr = mytextW;
  wptr = wtextW;
  for (i=0; i<strlen(mytext)-2; i++, aptr++, wptr++)
    {
      ok(*aptr == *wptr, "Char %d expected %04hx got %04hx\n", i, *aptr, *wptr);
      diff_found |= (*aptr != *wptr);
    }
  ok(!(diff_found), "fgetwc difference found in BINARY mode\n");
  ok(*wptr == '\n', "Should get newline\n");

  free(mytextW);
  fclose(tempfh);
  unlink(tempf);
  free(tempf);
}
