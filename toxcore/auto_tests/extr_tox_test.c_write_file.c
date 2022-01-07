
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int Tox ;


 int ck_abort_msg (char*) ;
 int file_recv ;
 scalar_t__ memcmp (int *,int const*,size_t) ;
 int memset (int *,int ,size_t) ;
 int num ;
 scalar_t__ size_recv ;

void write_file(Tox *tox, uint32_t friendnumber, uint32_t filenumber, uint64_t position, const uint8_t *data,
                size_t length, void *user_data)
{
    if (*((uint32_t *)user_data) != 974536)
        return;

    if (size_recv != position) {
        ck_abort_msg("Bad position");
        return;
    }

    if (length == 0) {
        file_recv = 1;
        return;
    }

    uint8_t f_data[length];
    memset(f_data, num, length);
    ++num;

    if (memcmp(f_data, data, length) == 0) {
        size_recv += length;
    } else {
        ck_abort_msg("FILE_CORRUPTED");
    }
}
