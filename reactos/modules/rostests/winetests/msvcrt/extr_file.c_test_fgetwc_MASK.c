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
typedef  char WCHAR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int BOOL ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int BUFSIZ ; 
 int FALSE ; 
 int LLEN ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void FUNC16( void )
{
#define LLEN 512

  char* tempf;
  FILE *tempfh;
  static const char mytext[]= "This is test_fgetwc\r\n";
  WCHAR wtextW[BUFSIZ+LLEN+1];
  WCHAR *mytextW = NULL, *aptr, *wptr;
  BOOL diff_found = FALSE;
  int j;
  unsigned int i;
  LONG l;

  tempf=FUNC1(".","wne");
  tempfh = FUNC5(tempf,"wb");
  j = 'a';
  /* pad to almost the length of the internal buffer */
  for (i=0; i<BUFSIZ-4; i++)
    FUNC6(j,tempfh);
  j = '\r';
  FUNC6(j,tempfh);
  j = '\n';
  FUNC6(j,tempfh);
  FUNC7(mytext,tempfh);
  FUNC2(tempfh);
  /* in text mode, getws/c expects multibyte characters */
  /*currently Wine only supports plain ascii, and that is all that is tested here */
  tempfh = FUNC5(tempf,"rt"); /* open in TEXT mode */
  FUNC4(wtextW,LLEN,tempfh);
  l=FUNC11(tempfh);
  FUNC13(l==BUFSIZ-2, "ftell expected %d got %d\n", BUFSIZ-2, l);
  FUNC4(wtextW,LLEN,tempfh);
  l=FUNC11(tempfh);
  FUNC13(l==BUFSIZ-2+FUNC14(mytext), "ftell expected %d got %d\n", BUFSIZ-2+FUNC12(mytext), l);
  mytextW = FUNC0 (mytext);
  aptr = mytextW;
  wptr = wtextW;
  for (i=0; i<FUNC14(mytext)-2; i++, aptr++, wptr++)
    {
      diff_found |= (*aptr != *wptr);
    }
  FUNC13(!(diff_found), "fgetwc difference found in TEXT mode\n");
  FUNC13(*wptr == '\n', "Carriage return was not skipped\n");
  FUNC2(tempfh);
  FUNC15(tempf);
  
  tempfh = FUNC5(tempf,"wb");
  j = 'a';
  /* pad to almost the length of the internal buffer. Use an odd number of bytes
     to test that we can read wchars that are split across the internal buffer
     boundary */
  for (i=0; i<BUFSIZ-3-FUNC14(mytext)*sizeof(WCHAR); i++)
    FUNC6(j,tempfh);
  j = '\r';
  FUNC8(j,tempfh);
  j = '\n';
  FUNC8(j,tempfh);
  FUNC9(wtextW,tempfh);
  FUNC9(wtextW,tempfh);
  FUNC2(tempfh);
  /* in binary mode, getws/c expects wide characters */
  tempfh = FUNC5(tempf,"rb"); /* open in BINARY mode */
  j=(BUFSIZ-2)/sizeof(WCHAR)-FUNC14(mytext);
  FUNC4(wtextW,j,tempfh);
  l=FUNC11(tempfh);
  j=(j-1)*sizeof(WCHAR);
  FUNC13(l==j, "ftell expected %d got %d\n", j, l);
  i=FUNC3(tempfh);
  FUNC13(i=='a', "fgetc expected %d got %d\n", 0x61, i);
  l=FUNC11(tempfh);
  j++;
  FUNC13(l==j, "ftell expected %d got %d\n", j, l);
  FUNC4(wtextW,3,tempfh);
  FUNC13(wtextW[0]=='\r',"expected carriage return got %04hx\n", wtextW[0]);
  FUNC13(wtextW[1]=='\n',"expected newline got %04hx\n", wtextW[1]);
  l=FUNC11(tempfh);
  j += 4;
  FUNC13(l==j, "ftell expected %d got %d\n", j, l);
  for(i=0; i<FUNC14(mytext); i++)
    wtextW[i] = 0;
  /* the first time we get the string, it should be entirely within the local buffer */
  FUNC4(wtextW,LLEN,tempfh);
  l=FUNC11(tempfh);
  j += (FUNC14(mytext)-1)*sizeof(WCHAR);
  FUNC13(l==j, "ftell expected %d got %d\n", j, l);
  diff_found = FALSE;
  aptr = mytextW;
  wptr = wtextW;
  for (i=0; i<FUNC14(mytext)-2; i++, aptr++, wptr++)
    {
      FUNC13(*aptr == *wptr, "Char %d expected %04hx got %04hx\n", i, *aptr, *wptr);
      diff_found |= (*aptr != *wptr);
    }
  FUNC13(!(diff_found), "fgetwc difference found in BINARY mode\n");
  FUNC13(*wptr == '\n', "Should get newline\n");
  for(i=0; i<FUNC14(mytext); i++)
    wtextW[i] = 0;
  /* the second time we get the string, it should cross the local buffer boundary.
     One of the wchars should be split across the boundary */
  FUNC4(wtextW,LLEN,tempfh);
  diff_found = FALSE;
  aptr = mytextW;
  wptr = wtextW;
  for (i=0; i<FUNC14(mytext)-2; i++, aptr++, wptr++)
    {
      FUNC13(*aptr == *wptr, "Char %d expected %04hx got %04hx\n", i, *aptr, *wptr);
      diff_found |= (*aptr != *wptr);
    }
  FUNC13(!(diff_found), "fgetwc difference found in BINARY mode\n");
  FUNC13(*wptr == '\n', "Should get newline\n");

  FUNC10(mytextW);
  FUNC2(tempfh);
  FUNC15(tempf);
  FUNC10(tempf);
}