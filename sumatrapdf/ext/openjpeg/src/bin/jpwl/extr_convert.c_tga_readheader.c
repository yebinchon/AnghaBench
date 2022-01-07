
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_CUR ;
 unsigned char TGA_HEADER_SIZE ;
 int fprintf (int ,char*) ;
 int fread (unsigned char*,unsigned char,int,int *) ;
 int free (unsigned char*) ;
 int fseek (int *,int,int ) ;
 unsigned short get_ushort (unsigned short) ;
 scalar_t__ malloc (unsigned char) ;
 int stderr ;

__attribute__((used)) static int tga_readheader(FILE *fp, unsigned int *bits_per_pixel,
                          unsigned int *width, unsigned int *height, int *flip_image)
{
    int palette_size;
    unsigned char *tga ;
    unsigned char id_len, cmap_type, image_type;
    unsigned char pixel_depth, image_desc;
    unsigned short cmap_index, cmap_len, cmap_entry_size;
    unsigned short x_origin, y_origin, image_w, image_h;

    if (!bits_per_pixel || !width || !height || !flip_image) {
        return 0;
    }
    tga = (unsigned char*)malloc(18);

    if (fread(tga, TGA_HEADER_SIZE, 1, fp) != 1) {
        fprintf(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        free(tga);
        return 0 ;
    }
    id_len = (unsigned char)tga[0];
    cmap_type = (unsigned char)tga[1];
    image_type = (unsigned char)tga[2];
    cmap_index = get_ushort(*(unsigned short*)(&tga[3]));
    cmap_len = get_ushort(*(unsigned short*)(&tga[5]));
    cmap_entry_size = (unsigned char)tga[7];


    x_origin = get_ushort(*(unsigned short*)(&tga[8]));
    y_origin = get_ushort(*(unsigned short*)(&tga[10]));
    image_w = get_ushort(*(unsigned short*)(&tga[12]));
    image_h = get_ushort(*(unsigned short*)(&tga[14]));
    pixel_depth = (unsigned char)tga[16];
    image_desc = (unsigned char)tga[17];

    free(tga);

    *bits_per_pixel = (unsigned int)pixel_depth;
    *width = (unsigned int)image_w;
    *height = (unsigned int)image_h;


    if (id_len) {
        unsigned char *id = (unsigned char *) malloc(id_len);
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
