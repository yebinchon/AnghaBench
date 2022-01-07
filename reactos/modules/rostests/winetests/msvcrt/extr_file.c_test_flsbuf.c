
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* _base; int _cnt; int _bufsiz; } ;
typedef TYPE_1__ FILE ;


 int ARRAY_SIZE (int const*) ;
 int EOF ;


 int _flsbuf (char,TYPE_1__*) ;
 char* _tempnam (char*,char*) ;
 int fclose (TYPE_1__*) ;
 int fgetc (TYPE_1__*) ;
 TYPE_1__* fopen (char*,char*) ;
 int fputc (char,TYPE_1__*) ;
 int free (char*) ;
 int ok (int,char*,...) ;
 int setbuf (TYPE_1__*,int *) ;
 int setvbuf (TYPE_1__*,int *,int const,int) ;
 int unlink (char*) ;

__attribute__((used)) static void test_flsbuf( void )
{
  char* tempf;
  FILE *tempfh;
  int c;
  int ret;
  int bufmode;
  static const int bufmodes[] = {129,128};

  tempf=_tempnam(".","wne");
  for (bufmode=0; bufmode < ARRAY_SIZE(bufmodes); bufmode++)
  {
    tempfh = fopen(tempf,"wb");
    setvbuf(tempfh,((void*)0),bufmodes[bufmode],2048);
    ret = _flsbuf(0,tempfh);
    ok(0 == ret, "_flsbuf(0,tempfh) with bufmode %x expected %x got %x\n",
                         bufmodes[bufmode], 0, ret);
    ret = _flsbuf(0xff,tempfh);
    ok(0xff == ret, "_flsbuf(0xff,tempfh) with bufmode %x expected %x got %x\n",
                         bufmodes[bufmode], 0xff, ret);
    ret = _flsbuf(0xffffffff,tempfh);
    ok(0xff == ret, "_flsbuf(0xffffffff,tempfh) with bufmode %x expected %x got %x\n",
                         bufmodes[bufmode], 0xff, ret);
    if(tempfh->_base) {
        fputc('x', tempfh);
        tempfh->_cnt = -1;
        tempfh->_base[1] = 'a';
        ret = _flsbuf(0xab,tempfh);
        ok(ret == 0xab, "_flsbuf(0xab,tempfh) with bufmode %x expected 0xab got %x\n",
                bufmodes[bufmode], ret);
        ok(tempfh->_base[1] == 'a', "tempfh->_base[1] should not be changed (%d)\n",
                tempfh->_base[1]);
    }

    fclose(tempfh);
  }

  tempfh = fopen(tempf,"rb");
  ret = _flsbuf(0,tempfh);
  ok(EOF == ret, "_flsbuf(0,tempfh) on r/o file expected %x got %x\n", EOF, ret);
  fclose(tempfh);


  tempfh = fopen(tempf,"w");
  ok(tempfh->_cnt == 0, "_cnt on freshly opened file was %d\n", tempfh->_cnt);
  setbuf(tempfh, ((void*)0));
  ok(tempfh->_cnt == 0, "_cnt on unbuffered file was %d\n", tempfh->_cnt);
  ok(tempfh->_bufsiz == 2, "_bufsiz = %d\n", tempfh->_bufsiz);

  tempfh->_cnt = 1234;
  ret = _flsbuf('Q',tempfh);
  ok('Q' == ret, "_flsbuf('Q',tempfh) expected %x got %x\n", 'Q', ret);

  ok(tempfh->_cnt == 0, "after unbuf _flsbuf, _cnt was %d\n", tempfh->_cnt);
  fclose(tempfh);

  tempfh = fopen(tempf,"r");
  c = fgetc(tempfh);
  ok(c == 'Q', "first byte should be 'Q'\n");
  c = fgetc(tempfh);
  ok(c == EOF, "there should only be one byte\n");
  fclose(tempfh);

  unlink(tempf);
  free(tempf);
}
