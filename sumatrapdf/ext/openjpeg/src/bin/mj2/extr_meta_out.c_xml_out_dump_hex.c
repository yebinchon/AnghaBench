
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;

void xml_out_dump_hex(FILE* xmlout, char *data, int data_len, char* s)
{

    int i;


    fprintf(xmlout, "%s<AsHex>\n", s);
    fprintf(xmlout, "%s  ", s);
    for (i = 0; i < data_len; i++) {
        fprintf(xmlout, "%02x", data[i]);
    }
    fprintf(xmlout, "%s</AsHex>\n", s);
}
