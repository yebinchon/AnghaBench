
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BYTES_PER_DUMP_LINE ;
 scalar_t__ derived ;
 int fprintf (int *,char*,...) ;
 scalar_t__ isprint (int) ;
 scalar_t__ raw ;
 int xml_out_dump_hex (int *,char*,int,char*) ;

void xml_out_dump_hex_and_ascii(FILE* xmlout, char *data, int data_len,
                                char* s)
{

    int i, j;

    if (raw) {
        xml_out_dump_hex(xmlout, data, data_len, s);
    }

    if (derived) {
        fprintf(xmlout, "%s<AsHexAndASCII>\n", s);
        for (i = 0; i < data_len;) {
            fprintf(xmlout, "%s ", s);

            for (j = 0; j < BYTES_PER_DUMP_LINE; j++) {
                fprintf(xmlout, " %02x", data[i + j]);
            }
                                           fprintf(xmlout, "  ");

            for (j = 0; j < BYTES_PER_DUMP_LINE; j++, i++) {
                if (isprint((int)data[i]) && i < data_len) {
                    fprintf(xmlout, "%c", data[i]);
                } else {
                    fprintf(xmlout, " ");
                }
            }





        }
        fprintf(xmlout, "%s</AsHexAndASCII>\n", s);
    }
}
