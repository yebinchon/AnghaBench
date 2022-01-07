
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dx; int dy; int prec; int sgnd; } ;
typedef TYPE_1__ opj_image_comp_t ;
typedef scalar_t__ OPJ_BOOL ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int * stdout ;

void j2k_dump_image_comp_header(opj_image_comp_t* comp_header,
                                OPJ_BOOL dev_dump_flag, FILE* out_stream)
{
    char tab[3];

    if (dev_dump_flag) {
        fprintf(stdout, "[DEV] Dump an image_comp_header struct {\n");
        tab[0] = '\0';
    } else {
        tab[0] = '\t';
        tab[1] = '\t';
        tab[2] = '\0';
    }

    fprintf(out_stream, "%s dx=%d, dy=%d\n", tab, comp_header->dx, comp_header->dy);
    fprintf(out_stream, "%s prec=%d\n", tab, comp_header->prec);
    fprintf(out_stream, "%s sgnd=%d\n", tab, comp_header->sgnd);

    if (dev_dump_flag) {
        fprintf(out_stream, "}\n");
    }
}
