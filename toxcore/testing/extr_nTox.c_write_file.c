
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int Tox ;
typedef int FILE ;


 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fseek (int *,int ,int ) ;
 int fwrite (int const*,size_t,int,int *) ;
 int new_lines (char*) ;
 int sprintf (char*,char*,int,int) ;

void write_file(Tox *tox, uint32_t friendnumber, uint32_t filenumber, uint64_t position, const uint8_t *data,
                size_t length, void *user_data)
{
    if (length == 0) {
        char msg[512];
        sprintf(msg, "[t] %u file transfer: %u completed", friendnumber, filenumber);
        new_lines(msg);
        return;
    }

    char filename[256];
    sprintf(filename, "%u.%u.bin", friendnumber, filenumber);
    FILE *pFile = fopen(filename, "r+b");

    if (pFile == ((void*)0))
        pFile = fopen(filename, "wb");

    fseek(pFile, position, SEEK_SET);

    if (fwrite(data, length, 1, pFile) != 1)
        new_lines("Error writing to file");

    fclose(pFile);
}
