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
 int /*<<< orphan*/  FUNC0 (char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *context, 
  int argc,  
  sqlite3_value **argv
){
  int nText;
  unsigned char const *zText1;
  unsigned char const *zText2;
  unsigned char const *zText3;

  nText = FUNC4(argv[0]);
  zText1 = FUNC5(argv[0]);
  zText2 = FUNC5(argv[0]);
  zText3 = FUNC5(argv[0]);

  if( zText1!=zText2 || zText2!=zText3 ){
    FUNC2(context, "tkt2213 is not fixed", -1);
  }else{
    char *zCopy = (char *)FUNC1(nText);
    FUNC0(zCopy, zText1, nText);
    FUNC3(context, zCopy, nText, sqlite3_free);
  }
}