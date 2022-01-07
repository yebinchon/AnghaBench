
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void parseEXTINF(char *psz_string, char **ppsz_artist,
                        char **ppsz_name, int *pi_duration)
{
    char *end = ((void*)0);
    char *psz_item = ((void*)0);

    end = psz_string + strlen( psz_string );


    for (; psz_string < end && ( *psz_string == '\t' || *psz_string == ' ' );
         psz_string++ );


    psz_item = psz_string;
    psz_string = strchr( psz_string, ',' );
    if ( psz_string )
    {
        *psz_string = '\0';
        *pi_duration = atoi( psz_item );
    }
    else
    {
        return;
    }

    if ( psz_string < end )
        psz_string++;


    psz_item = strstr( psz_string, " - " );


    if ( psz_item )
    {

        *psz_item = '\0';
        *ppsz_artist = psz_string;
        *ppsz_name = psz_item + 3;
        return;
    }


    if ( *psz_string == ',' )
    {

        psz_string++;
        *ppsz_name = psz_string;
        return;
    }

    psz_item = psz_string;
    psz_string = strchr( psz_string, ',' );
    if ( psz_string )
    {

        *psz_string = '\0';
        *ppsz_artist = psz_item;
        *ppsz_name = psz_string+1;
    }
    else
    {

        *ppsz_name = psz_item;
    }
    return;
}
