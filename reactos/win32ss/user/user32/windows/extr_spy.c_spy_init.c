
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int LPBYTE ;
typedef int LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef char BOOL ;


 char FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_CURRENT_USER ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 scalar_t__ InterlockedCompareExchange (int volatile*,int,scalar_t__) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,char*,int *) ;
 scalar_t__* MessageTypeNames ;
 int RegCloseKey (int ) ;
 int RegOpenKeyA (int ,char*,int *) ;
 int RegQueryValueExA (int ,char*,int ,int*,int ,int*) ;
 int SPY_MAX_MSGNUM ;
 scalar_t__ TLS_OUT_OF_INDEXES ;
 int TRACE (char*,char*) ;
 int TRACE_ON (int ) ;
 char TRUE ;
 int TlsAlloc () ;
 int TlsFree (int) ;
 char atoi (char*) ;
 scalar_t__ indent_tls_index ;
 int message ;
 scalar_t__ spy_exclude ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strstr (char*,scalar_t__) ;

__attribute__((used)) static BOOL spy_init(void)
{
    int i;
    char buffer[1024];
    HKEY hkey;
    char *exclude;

    if (!TRACE_ON(message)) return FALSE;

    if (indent_tls_index == TLS_OUT_OF_INDEXES)
    {
        DWORD index = TlsAlloc();
        if (InterlockedCompareExchange((volatile LONG *) &indent_tls_index, index, TLS_OUT_OF_INDEXES ) != TLS_OUT_OF_INDEXES)
            TlsFree( index );
    }

    if (spy_exclude) return TRUE;
    exclude = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, SPY_MAX_MSGNUM + 2 );


    if(!RegOpenKeyA(HKEY_CURRENT_USER, "Software\\Wine\\Debug", &hkey))
    {
        DWORD type, count = sizeof(buffer);

        buffer[0] = 0;
        if (!RegQueryValueExA(hkey, "SpyInclude", 0, &type, (LPBYTE) buffer, &count) &&
            strcmp( buffer, "INCLUDEALL" ))
        {
            TRACE("Include=%s\n", buffer );
            for (i = 0; i <= SPY_MAX_MSGNUM; i++)
                exclude[i] = (MessageTypeNames[i] && !strstr(buffer,MessageTypeNames[i]));
        }

        count = sizeof(buffer);
        buffer[0] = 0;
        if (!RegQueryValueExA(hkey, "SpyExclude", 0, &type, (LPBYTE) buffer, &count))
        {
            TRACE("Exclude=%s\n", buffer );
            if (!strcmp( buffer, "EXCLUDEALL" ))
                for (i = 0; i <= SPY_MAX_MSGNUM; i++) exclude[i] = TRUE;
            else
                for (i = 0; i <= SPY_MAX_MSGNUM; i++)
                    exclude[i] = (MessageTypeNames[i] && strstr(buffer,MessageTypeNames[i]));
        }

        count = sizeof(buffer);
        if(!RegQueryValueExA(hkey, "SpyExcludeDWP", 0, &type, (LPBYTE) buffer, &count))
            exclude[SPY_MAX_MSGNUM + 1] = atoi(buffer);

        RegCloseKey(hkey);
    }

    if (InterlockedCompareExchangePointer( (void **)&spy_exclude, exclude, ((void*)0) ))
        HeapFree( GetProcessHeap(), 0, exclude );

    return TRUE;
}
