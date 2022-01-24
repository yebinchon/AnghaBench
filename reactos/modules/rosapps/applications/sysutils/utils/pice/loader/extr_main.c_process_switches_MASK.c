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
#define  ACTION_BREAK 137 
#define  ACTION_INSTALL 136 
#define  ACTION_LOAD 135 
#define  ACTION_NONE 134 
#define  ACTION_RELOAD 133 
#define  ACTION_STATUS 132 
#define  ACTION_TERMINAL 131 
#define  ACTION_TRANS 130 
#define  ACTION_UNINSTALL 129 
#define  ACTION_UNLOAD 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ ulGlobalVerbose ; 

int FUNC10(int argc,char* argv[])
{
	int i;
	char* parg,*pfilename = NULL;
	int action = ACTION_NONE;
	int error = 0;

    // parse commandline arguments
	for(i=1;i<argc;i++)
	{
		parg = argv[i];
		if(*parg == '-')
		{
		    int new_action=ACTION_NONE;

			parg++;
			if(FUNC7(parg,"load")==0 || FUNC7(parg,"l")==0)
			{
				new_action = ACTION_LOAD;
			}
			else if(FUNC7(parg,"unload")==0 || FUNC7(parg,"u")==0)
			{
				new_action = ACTION_UNLOAD;
			}
			else if(FUNC7(parg,"trans")==0 || FUNC7(parg,"t")==0)
            {
                new_action = ACTION_TRANS;
            }
			else if(FUNC7(parg,"reload")==0 || FUNC7(parg,"r")==0)
            {
                new_action = ACTION_RELOAD;
            }
			else if(FUNC7(parg,"verbose")==0 || FUNC7(parg,"v")==0)
            {
			    if( ulGlobalVerbose+1 > ulGlobalVerbose )
				    ulGlobalVerbose++;
            }
			else if(FUNC7(parg,"install")==0 || FUNC7(parg,"i")==0)
            {
                new_action = ACTION_INSTALL;
            }
			else if(FUNC7(parg,"uninstall")==0 || FUNC7(parg,"x")==0)
            {
                new_action = ACTION_UNINSTALL;
            }
			else if(FUNC7(parg,"status")==0 || FUNC7(parg,"s")==0)
            {
                new_action = ACTION_STATUS;
            }
			else if(FUNC7(parg,"break")==0 || FUNC7(parg,"b")==0)
            {
                new_action = ACTION_BREAK;
            }
			else if(FUNC7(parg,"serial")==0 || FUNC7(parg,"ser")==0)
            {
                new_action = ACTION_TERMINAL;
            }
			else
			{
				FUNC4("LOADER: error: unknown switch %s", argv[i]);
				error = 1;
			}

            if( new_action != ACTION_NONE )
            {
                if( action == ACTION_NONE )
                    action = new_action;
                else
                if( action == new_action )
                {
                    // identical, just ignore
                }
                else
                {
                    FUNC4("LOADER: error: conflicting switch %s", argv[i]);
                    error = 1;
                }
            }
		}
		else
		{
            if( pfilename )
            {
                FUNC4("LOADER: error: additional filename %s", parg);
                error = 1;
            }
			pfilename = parg;
		}
	}

    // check number of required parameters
    switch( action )
    {
        case ACTION_TRANS :
        case ACTION_LOAD :
        case ACTION_UNLOAD :
            if( !pfilename )
            {
                FUNC4("LOADER: error: missing filename\n");
                error = 1;
            }
            break;
        case ACTION_RELOAD :
            /* filename parameter is optional */
            break;
#if 0
        case ACTION_UNINSTALL:
            close_debugger();
            tryuninstall();
            break;
        case ACTION_INSTALL:
            tryinstall();
            break;
#endif
        case ACTION_STATUS:
            FUNC6();
            break;
        case ACTION_BREAK:
            FUNC2();
            break;
#if 0
        case ACTION_TERMINAL:
            doterminal();
            break;
#endif
        case ACTION_NONE :
            FUNC4("LOADER: no action specified specifed on commandline\n");
            error = 1;

            break;
        default :
            FUNC4("LOADER: an internal error has occurred at commandline parsing\n");
            error = 1;
    }

    if( !error )    // commandline was fine, now start processing
    {
        switch( action )
        {
            case ACTION_TRANS :
                FUNC4("LOADER: trying to translate file %s...\n",pfilename);
                if( FUNC5(pfilename)==0 )
                    FUNC4("LOADER: file %s has been translated\n",pfilename);
                else
                    FUNC4("LOADER: error while translating file %s\n",pfilename);
                break;
            case ACTION_LOAD :
            case ACTION_UNLOAD :
            case ACTION_RELOAD :
                FUNC0(action,pfilename);
                break;
        }
    }

    return error;
}