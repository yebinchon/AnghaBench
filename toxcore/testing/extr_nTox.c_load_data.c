
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct Tox_Options {size_t savedata_length; int * savedata_data; int savedata_type; } ;
typedef int Tox ;
typedef int FILE ;


 int SEEK_END ;
 int TOX_SAVEDATA_TYPE_TOX_SAVE ;
 int data_file_name ;
 scalar_t__ fclose (int *) ;
 int * fopen (int ,char*) ;
 int fputs (char*,int ) ;
 size_t fread (int *,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 int perror (char*) ;
 int rewind (int *) ;
 int stderr ;
 int * tox_new (struct Tox_Options*,int *) ;
 int tox_options_default (struct Tox_Options*) ;

__attribute__((used)) static Tox *load_data()
{
    FILE *data_file = fopen(data_file_name, "r");

    if (data_file) {
        fseek(data_file, 0, SEEK_END);
        size_t size = ftell(data_file);
        rewind(data_file);

        uint8_t data[size];

        if (fread(data, sizeof(uint8_t), size, data_file) != size) {
            fputs("[!] could not read data file!\n", stderr);
            fclose(data_file);
            return 0;
        }

        struct Tox_Options options;

        tox_options_default(&options);

        options.savedata_type = TOX_SAVEDATA_TYPE_TOX_SAVE;

        options.savedata_data = data;

        options.savedata_length = size;

        Tox *m = tox_new(&options, ((void*)0));

        if (fclose(data_file) < 0) {
            perror("[!] fclose failed");


        }

        return m;
    }

    return tox_new(((void*)0), ((void*)0));
}
