#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* zText; int eType; size_t iOff; } ;
typedef  TYPE_1__ CmdLineOption ;

/* Variables and functions */
 int CMDLINE_BARE ; 
#define  CMDLINE_BOOLEAN 130 
#define  CMDLINE_INTEGER 129 
#define  CMDLINE_STRING 128 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,TYPE_1__*,char const*) ; 

__attribute__((used)) static void FUNC8(
  int argc, 
  char **argv, 
  int iStart,
  CmdLineOption *aOpt,
  void *pStruct,
  const char *zHelp
){
  char *pOut = (char*)pStruct;
  int bVerbose = 0;
  int iArg;

  for(iArg=iStart; iArg<argc; iArg++){
    const char *zArg = argv[iArg];
    int nArg = FUNC6(zArg);
    int nMatch = 0;
    int iOpt;

    for(iOpt=0; aOpt[iOpt].zText; iOpt++){
      CmdLineOption *pOpt = &aOpt[iOpt];
      if( 0==FUNC5(pOpt->zText, zArg, nArg) ){
        if( nMatch ){
          FUNC0(zArg);
        }
        nMatch++;
        if( pOpt->eType==CMDLINE_BARE ){
          *(int*)(&pOut[pOpt->iOff]) = 1;
        }else{
          iArg++;
          if( iArg==argc ){
            FUNC4(pOpt);
          }
          switch( pOpt->eType ){
            case CMDLINE_INTEGER:
              *(int*)(&pOut[pOpt->iOff]) = FUNC3(pOpt, argv[iArg]);
              break;
            case CMDLINE_STRING:
              *(const char**)(&pOut[pOpt->iOff]) = argv[iArg];
              break;
            case CMDLINE_BOOLEAN:
              *(int*)(&pOut[pOpt->iOff]) = FUNC2(pOpt, argv[iArg]);
              break;
          }
        }
      }
    }

    if( nMatch==0 && 0==FUNC5("-cmdline:verbose", zArg, nArg) ){
      bVerbose = 1;
      nMatch = 1;
    }

    if( nMatch==0 ){
      FUNC7(zArg, aOpt, zHelp);
    }
  }

  if( bVerbose ){
    int iOpt;
    FUNC1(stdout, "Options are: ");
    for(iOpt=0; aOpt[iOpt].zText; iOpt++){
      CmdLineOption *pOpt = &aOpt[iOpt];
      if( pOpt->eType!=CMDLINE_BARE || *(int*)(&pOut[pOpt->iOff]) ){
        FUNC1(stdout, "%s ", pOpt->zText);
      }
      switch( pOpt->eType ){
        case CMDLINE_INTEGER:
          FUNC1(stdout, "%d ", *(int*)(&pOut[pOpt->iOff]));
          break;
        case CMDLINE_BOOLEAN:
          FUNC1(stdout, "%d ", *(int*)(&pOut[pOpt->iOff]));
          break;
        case CMDLINE_STRING:
          FUNC1(stdout, "%s ", *(const char**)(&pOut[pOpt->iOff]));
          break;
      }
    }
    FUNC1(stdout, "\n");
  }
}