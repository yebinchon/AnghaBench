
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_mj2_t ;
typedef int opj_event_mgr_t ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int xml_write_overall_header (int *,int *,int *,unsigned int,int *) ;

int xml_write_struct(FILE* file, FILE *xmlout, opj_mj2_t * movie,
                     unsigned int sampleframe, char* stringDTD, opj_event_mgr_t *event_mgr)
{

    if (stringDTD != ((void*)0)) {
        fprintf(xmlout, "<?xml version=\"1.0\" standalone=\"no\"?>\n");


        stringDTD[6] =
            '\0';
        fprintf(xmlout, "<!DOCTYPE MJ2_File %s \"%s\">\n", stringDTD, stringDTD + 7);
        stringDTD[6] = ' ';
    } else {
        fprintf(xmlout, "<?xml version=\"1.0\" standalone=\"yes\"?>\n");
    }

    fprintf(xmlout, "<MJ2_File>\n");
    xml_write_overall_header(file, xmlout, movie, sampleframe, event_mgr);
    fprintf(xmlout, "</MJ2_File>");
    return 0;
}
