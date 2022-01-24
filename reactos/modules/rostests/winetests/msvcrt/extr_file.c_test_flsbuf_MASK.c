#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* _base; int _cnt; int _bufsiz; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int EOF ; 
#define  _IOFBF 129 
#define  _IONBF 128 
 int FUNC1 (char,TYPE_1__*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int const,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12( void )
{
  char* tempf;
  FILE *tempfh;
  int  c;
  int  ret;
  int  bufmode;
  static const int bufmodes[] = {_IOFBF,_IONBF};

  tempf=FUNC2(".","wne");
  for (bufmode=0; bufmode < FUNC0(bufmodes); bufmode++)
  {
    tempfh = FUNC5(tempf,"wb");
    FUNC10(tempfh,NULL,bufmodes[bufmode],2048);
    ret = FUNC1(0,tempfh);
    FUNC8(0 == ret, "_flsbuf(0,tempfh) with bufmode %x expected %x got %x\n",
                         bufmodes[bufmode], 0, ret);
    ret = FUNC1(0xff,tempfh);
    FUNC8(0xff == ret, "_flsbuf(0xff,tempfh) with bufmode %x expected %x got %x\n",
                         bufmodes[bufmode], 0xff, ret);
    ret = FUNC1(0xffffffff,tempfh);
    FUNC8(0xff == ret, "_flsbuf(0xffffffff,tempfh) with bufmode %x expected %x got %x\n",
                         bufmodes[bufmode], 0xff, ret);
    if(tempfh->_base) {
        FUNC6('x', tempfh);
        tempfh->_cnt = -1;
        tempfh->_base[1] = 'a';
        ret = FUNC1(0xab,tempfh);
        FUNC8(ret == 0xab, "_flsbuf(0xab,tempfh) with bufmode %x expected 0xab got %x\n",
                bufmodes[bufmode], ret);
        FUNC8(tempfh->_base[1] == 'a', "tempfh->_base[1] should not be changed (%d)\n",
                tempfh->_base[1]);
    }

    FUNC3(tempfh);
  }

  tempfh = FUNC5(tempf,"rb");
  ret = FUNC1(0,tempfh);
  FUNC8(EOF == ret, "_flsbuf(0,tempfh) on r/o file expected %x got %x\n", EOF, ret);
  FUNC3(tempfh);

  /* See bug 17123, exposed by WinAVR's make */
  tempfh = FUNC5(tempf,"w");
  FUNC8(tempfh->_cnt == 0, "_cnt on freshly opened file was %d\n", tempfh->_cnt);
  FUNC9(tempfh, NULL);
  FUNC8(tempfh->_cnt == 0, "_cnt on unbuffered file was %d\n", tempfh->_cnt);
  FUNC8(tempfh->_bufsiz == 2, "_bufsiz = %d\n", tempfh->_bufsiz);
  /* Inlined putchar sets _cnt to -1.  Native seems to ignore the value... */
  tempfh->_cnt = 1234;
  ret = FUNC1('Q',tempfh);
  FUNC8('Q' == ret, "_flsbuf('Q',tempfh) expected %x got %x\n", 'Q', ret);
  /* ... and reset it to zero */
  FUNC8(tempfh->_cnt == 0, "after unbuf _flsbuf, _cnt was %d\n", tempfh->_cnt);
  FUNC3(tempfh);
  /* And just for grins, make sure the file is correct */
  tempfh = FUNC5(tempf,"r");
  c = FUNC4(tempfh);
  FUNC8(c == 'Q', "first byte should be 'Q'\n");
  c = FUNC4(tempfh);
  FUNC8(c == EOF, "there should only be one byte\n");
  FUNC3(tempfh);

  FUNC11(tempf);
  FUNC7(tempf);
}