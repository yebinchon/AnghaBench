
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmUnitInfo {char* path; scalar_t__ length; } ;
struct chmFile {int dummy; } ;
typedef int FILE ;


 int CHM_ENUMERATOR_CONTINUE ;
 int fprintf (int *,char*,int,char*,char*) ;

__attribute__((used)) static int _print_ui_index(struct chmFile *h, struct chmUnitInfo *ui,
                           void *context)
{
    FILE *fout = (FILE*) context;
    fprintf(fout,
            "<tr>"
            "<td align=right>%8d\n</td>"
            "<td><a href=\"%s\">%s</a></td>"
            "</tr>",
            (int)ui->length, ui->path, ui->path);
    return CHM_ENUMERATOR_CONTINUE;
}
