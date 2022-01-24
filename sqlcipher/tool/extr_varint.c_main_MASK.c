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
typedef  int u64 ;
typedef  int i64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char*) ; 
 int FUNC7 (unsigned char) ; 

int FUNC8(int argc, char **argv){
  int i;
  u64 x;
  u64 uX = 0;
  i64 iX;
  int n;
  unsigned char zHex[20];

  if( argc==1 ){
    FUNC1(stderr, 
         "Usage:\n"
         "  %s HH HH HH ...   Convert varint to decimal\n"
         "  %s DDDDD          Convert decimal to varint\n"
         "                    Add '+' or '-' before DDDDD to disambiguate.\n",
         argv[0], argv[0]);
    FUNC0(1);
  }
  if( argc>2 
   || (FUNC6(argv[1])==2 && FUNC2(argv[1][0])>=0 && FUNC2(argv[1][1])>=0)
  ){
    /* Hex to decimal */
    for(i=1; i<argc && i<9; i++){
      if( FUNC6(argv[i])!=2 ){
        FUNC1(stderr, "Not a hex byte: %s\n", argv[i]);
        FUNC0(1);
      }
      x = (FUNC2(argv[i][0])<<4) + FUNC2(argv[i][1]);
      uX = (uX<<7) + (x&0x7f);
      if( (x&0x80)==0 ) break;
    }
    if( i==9 && i<argc ){
      if( FUNC6(argv[i])!=2 ){
        FUNC1(stderr, "Not a hex byte: %s\n", argv[i]);
        FUNC0(1);
      }
      x = (FUNC2(argv[i][0])<<4) + FUNC2(argv[i][1]);
      uX = (uX<<8) + x;
    }
    i++;
    if( i<argc ){
      FUNC1(stderr, "Extra arguments: %s...\n", argv[i]);
      FUNC0(1);
    }
  }else{
    char *z = argv[1];
    int sign = 1;
    if( z[0]=='+' ) z++;
    else if( z[0]=='-' ){ z++; sign = -1; }
    uX = 0;
    while( z[0] ){
      if( z[0]<'0' || z[0]>'9' ){
        FUNC1(stderr, "Not a decimal number: %s", argv[1]);
        FUNC0(1);
      }
      uX = uX*10 + z[0] - '0';
      z++;
    }
    if( sign<0 ){
      FUNC3(&iX, &uX, 8);
      iX = -iX;
      FUNC3(&uX, &iX, 8);
    }
  }
  n = FUNC5(zHex, uX);
  FUNC4("%lld =", (i64)uX);
  for(i=0; i<n; i++){
    FUNC4(" %c%c", FUNC7(zHex[i]>>4), FUNC7(zHex[i]&0x0f));
  }
  FUNC4("\n");
  return 0;
}