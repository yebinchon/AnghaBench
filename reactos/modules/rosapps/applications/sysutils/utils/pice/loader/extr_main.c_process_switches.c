
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int change_symbols (int,char*) ;
 int close_debugger () ;
 int dobreak () ;
 int doterminal () ;
 int printf (char*,...) ;
 int process_file (char*) ;
 int showstatus () ;
 scalar_t__ strcmp (char*,char*) ;
 int tryinstall () ;
 int tryuninstall () ;
 scalar_t__ ulGlobalVerbose ;

int process_switches(int argc,char* argv[])
{
 int i;
 char* parg,*pfilename = ((void*)0);
 int action = 134;
 int error = 0;


 for(i=1;i<argc;i++)
 {
  parg = argv[i];
  if(*parg == '-')
  {
      int new_action=134;

   parg++;
   if(strcmp(parg,"load")==0 || strcmp(parg,"l")==0)
   {
    new_action = 135;
   }
   else if(strcmp(parg,"unload")==0 || strcmp(parg,"u")==0)
   {
    new_action = 128;
   }
   else if(strcmp(parg,"trans")==0 || strcmp(parg,"t")==0)
            {
                new_action = 130;
            }
   else if(strcmp(parg,"reload")==0 || strcmp(parg,"r")==0)
            {
                new_action = 133;
            }
   else if(strcmp(parg,"verbose")==0 || strcmp(parg,"v")==0)
            {
       if( ulGlobalVerbose+1 > ulGlobalVerbose )
        ulGlobalVerbose++;
            }
   else if(strcmp(parg,"install")==0 || strcmp(parg,"i")==0)
            {
                new_action = 136;
            }
   else if(strcmp(parg,"uninstall")==0 || strcmp(parg,"x")==0)
            {
                new_action = 129;
            }
   else if(strcmp(parg,"status")==0 || strcmp(parg,"s")==0)
            {
                new_action = 132;
            }
   else if(strcmp(parg,"break")==0 || strcmp(parg,"b")==0)
            {
                new_action = 137;
            }
   else if(strcmp(parg,"serial")==0 || strcmp(parg,"ser")==0)
            {
                new_action = 131;
            }
   else
   {
    printf("LOADER: error: unknown switch %s", argv[i]);
    error = 1;
   }

            if( new_action != 134 )
            {
                if( action == 134 )
                    action = new_action;
                else
                if( action == new_action )
                {

                }
                else
                {
                    printf("LOADER: error: conflicting switch %s", argv[i]);
                    error = 1;
                }
            }
  }
  else
  {
            if( pfilename )
            {
                printf("LOADER: error: additional filename %s", parg);
                error = 1;
            }
   pfilename = parg;
  }
 }


    switch( action )
    {
        case 130 :
        case 135 :
        case 128 :
            if( !pfilename )
            {
                printf("LOADER: error: missing filename\n");
                error = 1;
            }
            break;
        case 133 :

            break;
        case 132:
            showstatus();
            break;
        case 137:
            dobreak();
            break;





        case 134 :
            printf("LOADER: no action specified specifed on commandline\n");
            error = 1;

            break;
        default :
            printf("LOADER: an internal error has occurred at commandline parsing\n");
            error = 1;
    }

    if( !error )
    {
        switch( action )
        {
            case 130 :
                printf("LOADER: trying to translate file %s...\n",pfilename);
                if( process_file(pfilename)==0 )
                    printf("LOADER: file %s has been translated\n",pfilename);
                else
                    printf("LOADER: error while translating file %s\n",pfilename);
                break;
            case 135 :
            case 128 :
            case 133 :
                change_symbols(action,pfilename);
                break;
        }
    }

    return error;
}
