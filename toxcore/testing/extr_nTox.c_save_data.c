
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Tox ;
typedef int FILE ;


 int data_file_name ;
 scalar_t__ fclose (int *) ;
 int * fopen (int ,char*) ;
 int fputs (char*,int ) ;
 size_t fwrite (int *,int,size_t,int *) ;
 int perror (char*) ;
 int stderr ;
 int tox_get_savedata (int *,int *) ;
 size_t tox_get_savedata_size (int *) ;

__attribute__((used)) static int save_data(Tox *m)
{
    FILE *data_file = fopen(data_file_name, "w");

    if (!data_file) {
        perror("[!] load_key");
        return 0;
    }

    int res = 1;
    size_t size = tox_get_savedata_size(m);
    uint8_t data[size];
    tox_get_savedata(m, data);

    if (fwrite(data, sizeof(uint8_t), size, data_file) != size) {
        fputs("[!] could not write data file (1)!", stderr);
        res = 0;
    }

    if (fclose(data_file) < 0) {
        perror("[!] could not write data file (2)");
        res = 0;
    }

    return res;
}
