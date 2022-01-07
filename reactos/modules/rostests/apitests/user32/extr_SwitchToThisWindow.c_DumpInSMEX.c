
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int ISMEX_CALLBACK ;
 int ISMEX_NOSEND ;
 int ISMEX_NOTIFY ;
 int ISMEX_REPLIED ;
 int ISMEX_SEND ;
 int InSendMessageEx (int *) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static const char *
DumpInSMEX(void)
{
    static char s_buf[128];
    DWORD dwRet = InSendMessageEx(((void*)0));
    if (dwRet == ISMEX_NOSEND)
    {
        strcpy(s_buf, "ISMEX_NOSEND,");
        return s_buf;
    }
    s_buf[0] = 0;
    if (dwRet & ISMEX_CALLBACK)
        strcat(s_buf, "ISMEX_CALLBACK,");
    if (dwRet & ISMEX_NOTIFY)
        strcat(s_buf, "ISMEX_NOTIFY,");
    if (dwRet & ISMEX_REPLIED)
        strcat(s_buf, "ISMEX_REPLIED,");
    if (dwRet & ISMEX_SEND)
        strcat(s_buf, "ISMEX_SEND,");
    return s_buf;
}
