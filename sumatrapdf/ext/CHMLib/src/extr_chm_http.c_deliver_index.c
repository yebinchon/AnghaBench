
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmFile {int dummy; } ;
typedef int FILE ;


 int CHM_ENUMERATE_ALL ;
 int _print_ui_index ;
 int chm_enumerate (struct chmFile*,int ,int ,int *) ;
 int fprintf (int *,char*) ;

__attribute__((used)) static void deliver_index(FILE *fout, struct chmFile *file)
{
    fprintf(fout,
            "HTTP/1.1 200 OK\r\n"
            "Connection: close\r\n"

            "Content-Type: text/html\r\n\r\n"

            "<h2><u>CHM contents:</u></h2>"
            "<body><table>"
            "<tr><td><h5>Size:</h5></td><td><h5>File:</h5></td></tr>"
            "<tt>");
    if (! chm_enumerate(file, CHM_ENUMERATE_ALL, _print_ui_index, fout))
        fprintf(fout,"<br>   *** ERROR ***\r\n");
    fprintf(fout,"</tt> </table></body></html>");
}
