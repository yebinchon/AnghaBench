
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmFile {int dummy; } ;
typedef int FILE ;


 char* CONTENT_500 ;
 int INTERNAL_ERROR ;
 int close (int) ;
 int deliver_content (int *,char*,struct chmFile*) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int * fgets (char*,int,int *) ;
 int fprintf (int *,char*) ;
 int perror (char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int write (int,int ,int ) ;

__attribute__((used)) static void service_request(int fd, struct chmFile *file)
{
    char buffer[4096];
    char buffer2[4096];
    char *end;
    FILE *fout = fdopen(fd, "w+b");
    if (fout == ((void*)0))
    {
        perror("chm_http: failed to fdopen client stream");
        write(fd, INTERNAL_ERROR, strlen(INTERNAL_ERROR));
        close(fd);
        return;
    }

    fgets(buffer, 4096, fout);
    while (1)
    {
        if (fgets(buffer2, 4096, fout) == ((void*)0))
            break;
        if (buffer2[0] == '\r' || buffer2[0] == '\n' || buffer2[0] == '\0')
            break;
    }
    end = strrchr(buffer, ' ');
    if (strncmp(end+1, "HTTP", 4) == 0)
        *end = '\0';
    if (strncmp(buffer, "GET ", 4) == 0)
        deliver_content(fout, buffer+4, file);
    else
    {
        fprintf(fout, CONTENT_500);
        fclose(fout);
        return;
    }
}
