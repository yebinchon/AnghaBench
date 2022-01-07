
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int output_filename; } ;
typedef TYPE_1__ jbig2dec_params_t ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int hash_print (TYPE_1__*,int *) ;
 int * stderr ;
 int * stdout ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int
write_document_hash(jbig2dec_params_t *params)
{
    FILE *out;

    if (!strncmp(params->output_filename, "-", 2)) {
        out = stderr;
    } else {
        out = stdout;
    }

    fprintf(out, "Hash of decoded document: ");
    hash_print(params, out);
    fprintf(out, "\n");

    return 0;
}
