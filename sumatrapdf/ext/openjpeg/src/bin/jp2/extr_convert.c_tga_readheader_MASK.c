#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int TGA_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (unsigned char*,unsigned char,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (unsigned char*) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  stderr ; 
 void* x_origin ; 
 void* y_origin ; 

__attribute__((used)) static int FUNC6(FILE *fp, unsigned int *bits_per_pixel,
                          unsigned int *width, unsigned int *height, int *flip_image)
{
    int palette_size;
    unsigned char tga[TGA_HEADER_SIZE];
    unsigned char id_len, /*cmap_type,*/ image_type;
    unsigned char pixel_depth, image_desc;
    unsigned short /*cmap_index,*/ cmap_len, cmap_entry_size;
    unsigned short /*x_origin, y_origin,*/ image_w, image_h;

    if (!bits_per_pixel || !width || !height || !flip_image) {
        return 0;
    }

    if (FUNC1(tga, TGA_HEADER_SIZE, 1, fp) != 1) {
        FUNC0(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        return 0 ;
    }
    id_len = tga[0];
    /*cmap_type = tga[1];*/
    image_type = tga[2];
    /*cmap_index = get_tga_ushort(&tga[3]);*/
    cmap_len = FUNC4(&tga[5]);
    cmap_entry_size = tga[7];


#if 0
    x_origin = get_tga_ushort(&tga[8]);
    y_origin = get_tga_ushort(&tga[10]);
#endif
    image_w = FUNC4(&tga[12]);
    image_h = FUNC4(&tga[14]);
    pixel_depth = tga[16];
    image_desc  = tga[17];

    *bits_per_pixel = (unsigned int)pixel_depth;
    *width  = (unsigned int)image_w;
    *height = (unsigned int)image_h;

    /* Ignore tga identifier, if present ... */
    if (id_len) {
        unsigned char *id = (unsigned char *) FUNC5(id_len);
        if (id == 0) {
            FUNC0(stderr, "tga_readheader: memory out\n");
            return 0;
        }
        if (!FUNC1(id, id_len, 1, fp)) {
            FUNC0(stderr,
                    "\nError: fread return a number of element different from the expected.\n");
            FUNC2(id);
            return 0 ;
        }
        FUNC2(id);
    }

    /* Test for compressed formats ... not yet supported ...
    // Note :-  9 - RLE encoded palettized.
    //         10 - RLE encoded RGB. */
    if (image_type > 8) {
        FUNC0(stderr, "Sorry, compressed tga files are not currently supported.\n");
        return 0 ;
    }

    *flip_image = !(image_desc & 32);

    /* Palettized formats are not yet supported, skip over the palette, if present ... */
    palette_size = cmap_len * (cmap_entry_size / 8);

    if (palette_size > 0) {
        FUNC0(stderr, "File contains a palette - not yet supported.");
        FUNC3(fp, palette_size, SEEK_CUR);
    }
    return 1;
}