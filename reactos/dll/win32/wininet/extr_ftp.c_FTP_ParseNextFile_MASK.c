#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int wMinute; int wHour; int wDay; int wMonth; int wYear; scalar_t__ wSecond; } ;
struct TYPE_9__ {char* nSize; int permissions; int /*<<< orphan*/ * lpszName; void* bIsDirectory; TYPE_1__ tmLastModified; } ;
struct TYPE_8__ {int wYear; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  TYPE_3__* LPFILEPROPERTIESW ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 void* TRUE ; 
 void* FUNC7 (char*) ; 
 void* FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int*,int*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (char*,char) ; 
 int FUNC16 (char*) ; 
 char* FUNC17 (char*,char const*) ; 
 char* szMonths ; 

__attribute__((used)) static BOOL FUNC18(INT nSocket, LPCWSTR lpszSearchFile, LPFILEPROPERTIESW lpfp)
{
    static const char szSpace[] = " \t";
    DWORD nBufLen;
    char *pszLine;
    char *pszToken;
    char *pszTmp;
    BOOL found = FALSE;
    int i;
    
    lpfp->lpszName = NULL;
    do {
        if(!(pszLine = FUNC1(nSocket, &nBufLen)))
            return FALSE;
    
        pszToken = FUNC17(pszLine, szSpace);
        /* ls format
         * <Permissions> <NoLinks> <owner>   <group> <size> <date>  <time or year> <filename>
         *
         * For instance:
         * drwx--s---     2         pcarrier  ens     512    Sep 28  1995           pcarrier
         */
        if(!FUNC12(pszToken[0]) && 10 == FUNC16(pszToken)) {
            if(!FUNC2(pszToken, lpfp))
                lpfp->bIsDirectory = FALSE;
            for(i=0; i<=3; i++) {
              if(!(pszToken = FUNC17(NULL, szSpace)))
                  break;
            }
            if(!pszToken) continue;
            if(lpfp->bIsDirectory) {
                FUNC6("Is directory\n");
                lpfp->nSize = 0;
            }
            else {
                FUNC6("Size: %s\n", pszToken);
                lpfp->nSize = FUNC8(pszToken);
            }
            
            lpfp->tmLastModified.wSecond = 0;
            lpfp->tmLastModified.wMinute = 0;
            lpfp->tmLastModified.wHour   = 0;
            lpfp->tmLastModified.wDay    = 0;
            lpfp->tmLastModified.wMonth  = 0;
            lpfp->tmLastModified.wYear   = 0;
            
            /* Determine month */
            pszToken = FUNC17(NULL, szSpace);
            if(!pszToken) continue;
            if(FUNC16(pszToken) >= 3) {
                pszToken[3] = 0;
                if((pszTmp = FUNC5(szMonths, pszToken)))
                    lpfp->tmLastModified.wMonth = ((pszTmp - szMonths) / 3)+1;
            }
            /* Determine day */
            pszToken = FUNC17(NULL, szSpace);
            if(!pszToken) continue;
            lpfp->tmLastModified.wDay = FUNC7(pszToken);
            /* Determine time or year */
            pszToken = FUNC17(NULL, szSpace);
            if(!pszToken) continue;
            if((pszTmp = FUNC15(pszToken, ':'))) {
                SYSTEMTIME curr_time;
                *pszTmp = 0;
                pszTmp++;
                lpfp->tmLastModified.wMinute = FUNC7(pszTmp);
                lpfp->tmLastModified.wHour = FUNC7(pszToken);
                FUNC3( &curr_time );
                lpfp->tmLastModified.wYear = curr_time.wYear;
            }
            else {
                lpfp->tmLastModified.wYear = FUNC7(pszToken);
                lpfp->tmLastModified.wHour = 12;
            }
            FUNC6("Mod time: %02d:%02d:%02d  %04d/%02d/%02d\n",
                  lpfp->tmLastModified.wHour, lpfp->tmLastModified.wMinute, lpfp->tmLastModified.wSecond,
                  lpfp->tmLastModified.wYear, lpfp->tmLastModified.wMonth, lpfp->tmLastModified.wDay);

            pszToken = FUNC17(NULL, szSpace);
            if(!pszToken) continue;
            lpfp->lpszName = FUNC11(pszToken);
            FUNC6("File: %s\n", FUNC9(lpfp->lpszName));
        }
        /* NT way of parsing ... :
            
                07-13-03  08:55PM       <DIR>          sakpatch
                05-09-03  06:02PM             12656686 2003-04-21bgm_cmd_e.rgz
        */
        else if(FUNC12(pszToken[0]) && 8 == FUNC16(pszToken)) {
            int mon, mday, year, hour, min;
            lpfp->permissions = 0xFFFF; /* No idea, put full permission :-) */
            
            FUNC13(pszToken, "%d-%d-%d", &mon, &mday, &year);
            lpfp->tmLastModified.wDay   = mday;
            lpfp->tmLastModified.wMonth = mon;
            lpfp->tmLastModified.wYear  = year;

            /* Hacky and bad Y2K protection :-) */
            if (lpfp->tmLastModified.wYear < 70) lpfp->tmLastModified.wYear += 2000;

            pszToken = FUNC17(NULL, szSpace);
            if(!pszToken) continue;
            FUNC13(pszToken, "%d:%d", &hour, &min);
            lpfp->tmLastModified.wHour   = hour;
            lpfp->tmLastModified.wMinute = min;
            if((pszToken[5] == 'P') && (pszToken[6] == 'M')) {
                lpfp->tmLastModified.wHour += 12;
            }
            lpfp->tmLastModified.wSecond = 0;

            FUNC6("Mod time: %02d:%02d:%02d  %04d/%02d/%02d\n",
                  lpfp->tmLastModified.wHour, lpfp->tmLastModified.wMinute, lpfp->tmLastModified.wSecond,
                  lpfp->tmLastModified.wYear, lpfp->tmLastModified.wMonth, lpfp->tmLastModified.wDay);

            pszToken = FUNC17(NULL, szSpace);
            if(!pszToken) continue;
            if(!FUNC14(pszToken, "<DIR>")) {
                lpfp->bIsDirectory = TRUE;
                lpfp->nSize = 0;
                FUNC6("Is directory\n");
            }
            else {
                lpfp->bIsDirectory = FALSE;
                lpfp->nSize = FUNC8(pszToken);
                FUNC6("Size: %d\n", lpfp->nSize);
            }
            
            pszToken = FUNC17(NULL, szSpace);
            if(!pszToken) continue;
            lpfp->lpszName = FUNC11(pszToken);
            FUNC6("Name: %s\n", FUNC9(lpfp->lpszName));
        }
        /* EPLF format - http://cr.yp.to/ftp/list/eplf.html */
        else if(pszToken[0] == '+') {
            FUNC0("EPLF Format not implemented\n");
        }
        
        if(lpfp->lpszName) {
            if((lpszSearchFile == NULL) ||
	       (FUNC4(lpfp->lpszName, lpszSearchFile))) {
                found = TRUE;
                FUNC6("Matched: %s\n", FUNC9(lpfp->lpszName));
            }
            else {
                FUNC10(lpfp->lpszName);
                lpfp->lpszName = NULL;
            }
        }
    } while(!found);
    return TRUE;
}