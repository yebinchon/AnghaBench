
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int section ;
typedef int filename ;
typedef int buffer ;
typedef scalar_t__ WCHAR ;
typedef int PCWSTR ;
typedef scalar_t__* LPWSTR ;
typedef int INFCONTEXT ;
typedef int HINF ;
typedef scalar_t__ BOOL ;


 int MAX_INF_STRING_LENGTH ;
 scalar_t__ SetupFindFirstLineW (int ,int ,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetStringFieldW (int *,int,scalar_t__*,int,int *) ;
 int TRACE (char*,int ,int ,int ,int ) ;
 scalar_t__ TRUE ;
 int WritePrivateProfileStringW (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int debugstr_w (scalar_t__*) ;
 scalar_t__* strchrW (scalar_t__*,char) ;
 int strcpyW (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static BOOL update_ini_callback( HINF hinf, PCWSTR field, void *arg )
{
    INFCONTEXT context;

    BOOL ok = SetupFindFirstLineW( hinf, field, ((void*)0), &context );

    for (; ok; ok = SetupFindNextLine( &context, &context ))
    {
        WCHAR buffer[MAX_INF_STRING_LENGTH];
        WCHAR filename[MAX_INF_STRING_LENGTH];
        WCHAR section[MAX_INF_STRING_LENGTH];
        WCHAR entry[MAX_INF_STRING_LENGTH];
        WCHAR string[MAX_INF_STRING_LENGTH];
        LPWSTR divider;

        if (!SetupGetStringFieldW( &context, 1, filename,
                                   sizeof(filename)/sizeof(WCHAR), ((void*)0) ))
            continue;

        if (!SetupGetStringFieldW( &context, 2, section,
                                   sizeof(section)/sizeof(WCHAR), ((void*)0) ))
            continue;

        if (!SetupGetStringFieldW( &context, 4, buffer,
                                   sizeof(buffer)/sizeof(WCHAR), ((void*)0) ))
            continue;

        divider = strchrW(buffer,'=');
        if (divider)
        {
            *divider = 0;
            strcpyW(entry,buffer);
            divider++;
            strcpyW(string,divider);
        }
        else
        {
            strcpyW(entry,buffer);
            string[0]=0;
        }

        TRACE("Writing %s = %s in %s of file %s\n",debugstr_w(entry),
               debugstr_w(string),debugstr_w(section),debugstr_w(filename));
        WritePrivateProfileStringW(section,entry,string,filename);

    }
    return TRUE;
}
