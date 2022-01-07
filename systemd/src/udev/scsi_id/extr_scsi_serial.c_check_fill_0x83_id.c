
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_id_search_values {unsigned char id_type; unsigned char naa_type; unsigned char code_set; } ;
struct scsi_id_device {int kernel; } ;


 scalar_t__ MODEL_LENGTH ;
 unsigned char SCSI_ID_ASCII ;
 unsigned char SCSI_ID_NAA ;
 unsigned char SCSI_ID_NAA_DONT_CARE ;
 unsigned char SCSI_ID_TGTGROUP ;
 unsigned char SCSI_ID_VENDOR_SPECIFIC ;
 scalar_t__ VENDOR_LENGTH ;
 scalar_t__ append_vendor_model (struct scsi_id_device*,char*) ;
 char* hex_str ;
 int log_debug (char*,int ,int,int) ;
 int sprintf (char*,char*,unsigned int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int check_fill_0x83_id(struct scsi_id_device *dev_scsi,
                              unsigned char *page_83,
                              const struct scsi_id_search_values
                              *id_search, char *serial, char *serial_short,
                              int max_len, char *wwn,
                              char *wwn_vendor_extension, char *tgpt_group) {
        int i, j, s, len;





        if ((page_83[1] & 0x30) == 0x10) {
                if (id_search->id_type != SCSI_ID_TGTGROUP)
                        return 1;
        } else if ((page_83[1] & 0x30) != 0)
                return 1;

        if ((page_83[1] & 0x0f) != id_search->id_type)
                return 1;




        if ((id_search->naa_type != SCSI_ID_NAA_DONT_CARE) &&
            (id_search->naa_type != (page_83[4] & 0xf0) >> 4))
                return 1;




        if ((page_83[0] & 0x0f) != id_search->code_set)
                return 1;




        len = page_83[3];
        if ((page_83[0] & 0x0f) != SCSI_ID_ASCII)



                len *= 2;




        len += 2;
        if (id_search->id_type == SCSI_ID_VENDOR_SPECIFIC)
                len += VENDOR_LENGTH + MODEL_LENGTH;

        if (max_len < len) {
                log_debug("%s: length %d too short - need %d",
                          dev_scsi->kernel, max_len, len);
                return 1;
        }

        if (id_search->id_type == SCSI_ID_TGTGROUP && tgpt_group != ((void*)0)) {
                unsigned group;

                group = ((unsigned)page_83[6] << 8) | page_83[7];
                sprintf(tgpt_group,"%x", group);
                return 1;
        }

        serial[0] = hex_str[id_search->id_type];







        if (id_search->id_type == SCSI_ID_VENDOR_SPECIFIC)
                if (append_vendor_model(dev_scsi, serial + 1) < 0)
                        return 1;

        i = 4;
        s = j = strlen(serial);
        if ((page_83[0] & 0x0f) == SCSI_ID_ASCII) {



                while (i < (4 + page_83[3]))
                        serial[j++] = page_83[i++];
        } else {




                while (i < (4 + page_83[3])) {
                        serial[j++] = hex_str[(page_83[i] & 0xf0) >> 4];
                        serial[j++] = hex_str[page_83[i] & 0x0f];
                        i++;
                }
        }

        strcpy(serial_short, serial + s);

        if (id_search->id_type == SCSI_ID_NAA && wwn != ((void*)0)) {
                strncpy(wwn, serial + s, 16);
                if (wwn_vendor_extension)
                        strncpy(wwn_vendor_extension, serial + s + 16, 16);
        }

        return 0;
}
