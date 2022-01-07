
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* zText; int eType; size_t iOff; } ;
typedef TYPE_1__ CmdLineOption ;


 int CMDLINE_BARE ;



 int ambiguous_option_error (char const*) ;
 int fprintf (int ,char*,...) ;
 int get_boolean_option (TYPE_1__*,char*) ;
 int get_integer_option (TYPE_1__*,char*) ;
 int option_requires_argument_error (TYPE_1__*) ;
 scalar_t__ sqlite3_strnicmp (char*,char const*,int) ;
 int stdout ;
 int strlen (char const*) ;
 int unknown_option_error (char const*,TYPE_1__*,char const*) ;

__attribute__((used)) static void parse_command_line(
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
    int nArg = strlen(zArg);
    int nMatch = 0;
    int iOpt;

    for(iOpt=0; aOpt[iOpt].zText; iOpt++){
      CmdLineOption *pOpt = &aOpt[iOpt];
      if( 0==sqlite3_strnicmp(pOpt->zText, zArg, nArg) ){
        if( nMatch ){
          ambiguous_option_error(zArg);
        }
        nMatch++;
        if( pOpt->eType==CMDLINE_BARE ){
          *(int*)(&pOut[pOpt->iOff]) = 1;
        }else{
          iArg++;
          if( iArg==argc ){
            option_requires_argument_error(pOpt);
          }
          switch( pOpt->eType ){
            case 129:
              *(int*)(&pOut[pOpt->iOff]) = get_integer_option(pOpt, argv[iArg]);
              break;
            case 128:
              *(const char**)(&pOut[pOpt->iOff]) = argv[iArg];
              break;
            case 130:
              *(int*)(&pOut[pOpt->iOff]) = get_boolean_option(pOpt, argv[iArg]);
              break;
          }
        }
      }
    }

    if( nMatch==0 && 0==sqlite3_strnicmp("-cmdline:verbose", zArg, nArg) ){
      bVerbose = 1;
      nMatch = 1;
    }

    if( nMatch==0 ){
      unknown_option_error(zArg, aOpt, zHelp);
    }
  }

  if( bVerbose ){
    int iOpt;
    fprintf(stdout, "Options are: ");
    for(iOpt=0; aOpt[iOpt].zText; iOpt++){
      CmdLineOption *pOpt = &aOpt[iOpt];
      if( pOpt->eType!=CMDLINE_BARE || *(int*)(&pOut[pOpt->iOff]) ){
        fprintf(stdout, "%s ", pOpt->zText);
      }
      switch( pOpt->eType ){
        case 129:
          fprintf(stdout, "%d ", *(int*)(&pOut[pOpt->iOff]));
          break;
        case 130:
          fprintf(stdout, "%d ", *(int*)(&pOut[pOpt->iOff]));
          break;
        case 128:
          fprintf(stdout, "%s ", *(const char**)(&pOut[pOpt->iOff]));
          break;
      }
    }
    fprintf(stdout, "\n");
  }
}
