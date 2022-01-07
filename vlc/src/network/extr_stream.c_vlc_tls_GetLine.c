
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;


 int free (char*) ;
 char* realloc (char*,size_t) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_tls_Read (int *,char*,int,int) ;

char *vlc_tls_GetLine(vlc_tls_t *session)
{
    char *line = ((void*)0);
    size_t linelen = 0, linesize = 0;

    do
    {
        if (linelen == linesize)
        {
            linesize += 1024;

            char *newline = realloc(line, linesize);
            if (unlikely(newline == ((void*)0)))
                goto error;
            line = newline;
        }

        if (vlc_tls_Read(session, line + linelen, 1, 0) <= 0)
            goto error;
    }
    while (line[linelen++] != '\n');

    if (linelen >= 2 && line[linelen - 2] == '\r')
        line[linelen - 2] = '\0';
    return line;

error:
    free(line);
    return ((void*)0);
}
