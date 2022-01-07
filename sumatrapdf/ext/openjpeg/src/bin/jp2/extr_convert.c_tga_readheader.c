
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_CUR ;
 int TGA_HEADER_SIZE ;
 int fprintf (int ,char*) ;
 int fread (unsigned char*,unsigned char,int,int *) ;
 int free (unsigned char*) ;
 int fseek (int *,int,int ) ;
 void* get_tga_ushort (unsigned char*) ;
 scalar_t__ malloc (unsigned char) ;
 int stderr ;
 void* x_origin ;
 void* y_origin ;

__attribute__((used)) static int tga_readheader(FILE *fp, unsigned int *bits_per_pixel,
                          unsigned int *width, unsigned int *height, int *flip_image)
{
    int palette_size;
    unsigned char tga[TGA_HEADER_SIZE];
    unsigned char id_len, image_type;
    unsigned char pixel_depth, image_desc;
    unsigned short cmap_len, cmap_entry_size;
    unsigned short image_w, image_h;

    if (!bits_per_pixel || !width || !height || !flip_image) {
        return 0;
    }

    if (fread(tga, TGA_HEADER_SIZE, 1, fp) != 1) {
        fprintf(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        return 0 ;
    }
    id_len = tga[0];

    image_type = tga[2];

    cmap_len = get_tga_ushort(&tga[5]);
    cmap_entry_size = tga[7];






    image_w = get_tga_ushort(&tga[12]);
    image_h = get_tga_ushort(&tga[14]);
    pixel_depth = tga[16];
    image_desc = tga[17];

    *bits_per_pixel = (unsigned int)pixel_depth;
    *width = (unsigned int)image_w;
    *height = (unsigned int)image_h;


    if (id_len) {
        unsigned char *id = (unsigned char *) malloc(id_len);
        if (id == 0) {
            fprintf(stderr, "tga_readheader: memory out\n");
            return 0;
        }
        if (!fread(id, id_len, 1, fp)) {
            fprintf(stderr,
                    "\nError: fread return a number of element different from the expected.\n");
            free(id);
            return 0 ;
        }
        free(id);
    }




    if (image_type > 8) {
        fprintf(stderr, "Sorry, compressed tga files are not currently supported.\n");
        return 0 ;
    }

    *flip_image = !(image_desc & 32);


    palette_size = cmap_len * (cmap_entry_size / 8);

    if (palette_size > 0) {
        fprintf(stderr, "File contains a palette - not yet supported.");
        fseek(fp, palette_size, SEEK_CUR);
    }
    return 1;
}
