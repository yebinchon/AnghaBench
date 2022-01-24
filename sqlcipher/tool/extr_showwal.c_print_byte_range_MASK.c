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

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 int perLine ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(
  int ofst,              /* First byte in the range of bytes to print */
  int nByte,             /* Number of bytes to print */
  unsigned char *aData,  /* Content to print */
  int printOfst          /* Add this amount to the index on the left column */
){
  int i, j;
  const char *zOfstFmt;

  if( ((printOfst+nByte)&~0xfff)==0 ){
    zOfstFmt = " %03x: ";
  }else if( ((printOfst+nByte)&~0xffff)==0 ){
    zOfstFmt = " %04x: ";
  }else if( ((printOfst+nByte)&~0xfffff)==0 ){
    zOfstFmt = " %05x: ";
  }else if( ((printOfst+nByte)&~0xffffff)==0 ){
    zOfstFmt = " %06x: ";
  }else{
    zOfstFmt = " %08x: ";
  }

  for(i=0; i<nByte; i += perLine){
    FUNC1(stdout, zOfstFmt, i+printOfst);
    for(j=0; j<perLine; j++){
      if( i+j>nByte ){
        FUNC1(stdout, "   ");
      }else{
        FUNC1(stdout,"%02x ", aData[i+j]);
      }
    }
    for(j=0; j<perLine; j++){
      if( i+j>nByte ){
        FUNC1(stdout, " ");
      }else{
        FUNC1(stdout,"%c", FUNC0(aData[i+j]) ? aData[i+j] : '.');
      }
    }
    FUNC1(stdout,"\n");
  }
}