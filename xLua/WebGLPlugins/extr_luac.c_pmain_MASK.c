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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  Proto ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ LUA_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ dumping ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int listing ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * output ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  stripping ; 
 int /*<<< orphan*/  writer ; 

__attribute__((used)) static int FUNC16(lua_State* L)
{
 int argc=(int)FUNC12(L,1);
 char** argv=(char**)FUNC14(L,2);
 const Proto* f;
 int i;
 if (!FUNC10(L,argc)) FUNC3("too many input files");
 for (i=0; i<argc; i++)
 {
  const char* filename=FUNC0("-") ? NULL : argv[i];
  if (FUNC7(L,filename)!=LUA_OK) FUNC3(FUNC13(L,-1));
 }
 f=FUNC2(L,argc);
 if (listing) FUNC9(f,listing>1);
 if (dumping)
 {
  FILE* D= (output==NULL) ? stdout : FUNC6(output,"wb");
  if (D==NULL) FUNC1("open");
  FUNC11(L);
  FUNC8(L,f,writer,D,stripping);
  FUNC15(L);
  if (FUNC5(D)) FUNC1("write");
  if (FUNC4(D)) FUNC1("close");
 }
 return 0;
}