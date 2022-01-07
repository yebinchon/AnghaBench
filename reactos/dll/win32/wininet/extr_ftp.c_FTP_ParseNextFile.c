
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wMinute; int wHour; int wDay; int wMonth; int wYear; scalar_t__ wSecond; } ;
struct TYPE_9__ {char* nSize; int permissions; int * lpszName; void* bIsDirectory; TYPE_1__ tmLastModified; } ;
struct TYPE_8__ {int wYear; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef TYPE_3__* LPFILEPROPERTIESW ;
typedef int * LPCWSTR ;
typedef int INT ;
typedef int DWORD ;
typedef void* BOOL ;


 void* FALSE ;
 int FIXME (char*) ;
 char* FTP_GetNextLine (int ,int *) ;
 int FTP_ParsePermission (char*,TYPE_3__*) ;
 int GetLocalTime (TYPE_2__*) ;
 scalar_t__ PathMatchSpecW (int *,int *) ;
 char* StrStrIA (char*,char*) ;
 int TRACE (char*,...) ;
 void* TRUE ;
 void* atoi (char*) ;
 void* atol (char*) ;
 char* debugstr_w (int *) ;
 int heap_free (int *) ;
 void* heap_strdupAtoW (char*) ;
 scalar_t__ isdigit (char) ;
 int sscanf (char*,char*,int*,int*,...) ;
 int strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* strtok (char*,char const*) ;
 char* szMonths ;

__attribute__((used)) static BOOL FTP_ParseNextFile(INT nSocket, LPCWSTR lpszSearchFile, LPFILEPROPERTIESW lpfp)
{
    static const char szSpace[] = " \t";
    DWORD nBufLen;
    char *pszLine;
    char *pszToken;
    char *pszTmp;
    BOOL found = FALSE;
    int i;

    lpfp->lpszName = ((void*)0);
    do {
        if(!(pszLine = FTP_GetNextLine(nSocket, &nBufLen)))
            return FALSE;

        pszToken = strtok(pszLine, szSpace);






        if(!isdigit(pszToken[0]) && 10 == strlen(pszToken)) {
            if(!FTP_ParsePermission(pszToken, lpfp))
                lpfp->bIsDirectory = FALSE;
            for(i=0; i<=3; i++) {
              if(!(pszToken = strtok(((void*)0), szSpace)))
                  break;
            }
            if(!pszToken) continue;
            if(lpfp->bIsDirectory) {
                TRACE("Is directory\n");
                lpfp->nSize = 0;
            }
            else {
                TRACE("Size: %s\n", pszToken);
                lpfp->nSize = atol(pszToken);
            }

            lpfp->tmLastModified.wSecond = 0;
            lpfp->tmLastModified.wMinute = 0;
            lpfp->tmLastModified.wHour = 0;
            lpfp->tmLastModified.wDay = 0;
            lpfp->tmLastModified.wMonth = 0;
            lpfp->tmLastModified.wYear = 0;


            pszToken = strtok(((void*)0), szSpace);
            if(!pszToken) continue;
            if(strlen(pszToken) >= 3) {
                pszToken[3] = 0;
                if((pszTmp = StrStrIA(szMonths, pszToken)))
                    lpfp->tmLastModified.wMonth = ((pszTmp - szMonths) / 3)+1;
            }

            pszToken = strtok(((void*)0), szSpace);
            if(!pszToken) continue;
            lpfp->tmLastModified.wDay = atoi(pszToken);

            pszToken = strtok(((void*)0), szSpace);
            if(!pszToken) continue;
            if((pszTmp = strchr(pszToken, ':'))) {
                SYSTEMTIME curr_time;
                *pszTmp = 0;
                pszTmp++;
                lpfp->tmLastModified.wMinute = atoi(pszTmp);
                lpfp->tmLastModified.wHour = atoi(pszToken);
                GetLocalTime( &curr_time );
                lpfp->tmLastModified.wYear = curr_time.wYear;
            }
            else {
                lpfp->tmLastModified.wYear = atoi(pszToken);
                lpfp->tmLastModified.wHour = 12;
            }
            TRACE("Mod time: %02d:%02d:%02d  %04d/%02d/%02d\n",
                  lpfp->tmLastModified.wHour, lpfp->tmLastModified.wMinute, lpfp->tmLastModified.wSecond,
                  lpfp->tmLastModified.wYear, lpfp->tmLastModified.wMonth, lpfp->tmLastModified.wDay);

            pszToken = strtok(((void*)0), szSpace);
            if(!pszToken) continue;
            lpfp->lpszName = heap_strdupAtoW(pszToken);
            TRACE("File: %s\n", debugstr_w(lpfp->lpszName));
        }





        else if(isdigit(pszToken[0]) && 8 == strlen(pszToken)) {
            int mon, mday, year, hour, min;
            lpfp->permissions = 0xFFFF;

            sscanf(pszToken, "%d-%d-%d", &mon, &mday, &year);
            lpfp->tmLastModified.wDay = mday;
            lpfp->tmLastModified.wMonth = mon;
            lpfp->tmLastModified.wYear = year;


            if (lpfp->tmLastModified.wYear < 70) lpfp->tmLastModified.wYear += 2000;

            pszToken = strtok(((void*)0), szSpace);
            if(!pszToken) continue;
            sscanf(pszToken, "%d:%d", &hour, &min);
            lpfp->tmLastModified.wHour = hour;
            lpfp->tmLastModified.wMinute = min;
            if((pszToken[5] == 'P') && (pszToken[6] == 'M')) {
                lpfp->tmLastModified.wHour += 12;
            }
            lpfp->tmLastModified.wSecond = 0;

            TRACE("Mod time: %02d:%02d:%02d  %04d/%02d/%02d\n",
                  lpfp->tmLastModified.wHour, lpfp->tmLastModified.wMinute, lpfp->tmLastModified.wSecond,
                  lpfp->tmLastModified.wYear, lpfp->tmLastModified.wMonth, lpfp->tmLastModified.wDay);

            pszToken = strtok(((void*)0), szSpace);
            if(!pszToken) continue;
            if(!strcasecmp(pszToken, "<DIR>")) {
                lpfp->bIsDirectory = TRUE;
                lpfp->nSize = 0;
                TRACE("Is directory\n");
            }
            else {
                lpfp->bIsDirectory = FALSE;
                lpfp->nSize = atol(pszToken);
                TRACE("Size: %d\n", lpfp->nSize);
            }

            pszToken = strtok(((void*)0), szSpace);
            if(!pszToken) continue;
            lpfp->lpszName = heap_strdupAtoW(pszToken);
            TRACE("Name: %s\n", debugstr_w(lpfp->lpszName));
        }

        else if(pszToken[0] == '+') {
            FIXME("EPLF Format not implemented\n");
        }

        if(lpfp->lpszName) {
            if((lpszSearchFile == ((void*)0)) ||
        (PathMatchSpecW(lpfp->lpszName, lpszSearchFile))) {
                found = TRUE;
                TRACE("Matched: %s\n", debugstr_w(lpfp->lpszName));
            }
            else {
                heap_free(lpfp->lpszName);
                lpfp->lpszName = ((void*)0);
            }
        }
    } while(!found);
    return TRUE;
}
