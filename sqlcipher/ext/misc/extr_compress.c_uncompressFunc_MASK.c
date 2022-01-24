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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned long,int /*<<< orphan*/  (*) (unsigned char*)) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned char*,unsigned long*,unsigned char const*,unsigned int) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *pIn;
  unsigned char *pOut;
  unsigned int nIn;
  unsigned long int nOut;
  int rc;
  int i;

  pIn = FUNC3(argv[0]);
  nIn = FUNC4(argv[0]);
  nOut = 0;
  for(i=0; i<nIn && i<5; i++){
    nOut = (nOut<<7) | (pIn[i]&0x7f);
    if( (pIn[i]&0x80)!=0 ){ i++; break; }
  }
  pOut = FUNC1( nOut+1 );
  rc = FUNC5(pOut, &nOut, &pIn[i], nIn-i);
  if( rc==Z_OK ){
    FUNC2(context, pOut, nOut, sqlite3_free);
  }else{
    FUNC0(pOut);
  }
}