
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int Tox ;
struct TYPE_2__ {scalar_t__ file; } ;


 int SEEK_SET ;
 int fclose (scalar_t__) ;
 TYPE_1__* file_recv ;
 int fseek (scalar_t__,int ,int ) ;
 int fwrite (size_t const*,size_t,int,scalar_t__) ;
 int printf (char*,...) ;

void write_file(Tox *tox, uint32_t friendnumber, uint32_t filenumber, uint64_t position, const uint8_t *data,
                size_t length, void *user_data)
{
    uint8_t file_index = (filenumber >> 16) - 1;

    if (length == 0) {
        fclose(file_recv[file_index].file);
        printf("File closed\n");
        file_recv[file_index].file = 0;
        printf("%u file transfer: %u completed\n", friendnumber, filenumber);
        return;
    }

    if (file_recv[file_index].file != 0) {
        fseek(file_recv[file_index].file, position, SEEK_SET);

        if (fwrite(data, length, 1, file_recv[file_index].file) != 1)
            printf("Error writing data\n");
    }
}
