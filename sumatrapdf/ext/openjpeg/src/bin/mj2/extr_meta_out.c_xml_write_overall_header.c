
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int minversion; int num_cl; int * cl; int brand; } ;
typedef TYPE_1__ opj_mj2_t ;
typedef int opj_event_mgr_t ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int uint_to_chars (int ,char*) ;
 int xml_write_free_and_skip (int *,TYPE_1__*) ;
 int xml_write_moov (int *,int *,TYPE_1__*,unsigned int,int *) ;
 int xml_write_uuid (int *,TYPE_1__*) ;

int xml_write_overall_header(FILE *file, FILE *xmlout, opj_mj2_t * movie,
                             unsigned int sampleframe, opj_event_mgr_t *event_mgr)
{
    int i;
    char buf[5];
    buf[4] = '\0';

    fprintf(xmlout,
            "  <JP2 BoxType=\"jP[space][space]\" Signature=\"0x0d0a870a\" />\n");

    fprintf(xmlout, "  <FileType BoxType=\"ftyp\">\n");
    uint_to_chars(movie->brand, buf);
    fprintf(xmlout, "    <Brand>%s</Brand>\n",
            buf);
    fprintf(xmlout, "    <MinorVersion>%u</MinorVersion>\n",
            movie->minversion);
    fprintf(xmlout, "    <CompatibilityList Count=\"%d\">\n", movie->num_cl);
    for (i = movie->num_cl - 1; i > -1;
            i--) {
        uint_to_chars(movie->cl[i], buf);
        fprintf(xmlout, "      <CompatibleBrand>%s</CompatibleBrand>\n",
                buf);
    }
    fprintf(xmlout, "    </CompatibilityList>\n");
    fprintf(xmlout, "  </FileType>\n");
    xml_write_moov(file, xmlout, movie, sampleframe, event_mgr);



    xml_write_free_and_skip(xmlout,
                            movie);
    xml_write_uuid(xmlout,
                   movie);
    return 0;
}
