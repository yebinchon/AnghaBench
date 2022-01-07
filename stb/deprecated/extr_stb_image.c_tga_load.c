
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char stbi_uc ;
typedef unsigned char stbi__uint8 ;
typedef int stbi ;


 unsigned char* convert_format (unsigned char*,int,int,int,int) ;
 unsigned char* epuc (char*,char*) ;
 int free (unsigned char*) ;
 int get16le (int *) ;
 void* get8u (int *) ;
 int getn (int *,unsigned char*,int) ;
 scalar_t__ malloc (int) ;
 int skip (int *,int) ;

__attribute__((used)) static stbi_uc *tga_load(stbi *s, int *x, int *y, int *comp, int req_comp)
{

   int tga_offset = get8u(s);
   int tga_indexed = get8u(s);
   int tga_image_type = get8u(s);
   int tga_is_RLE = 0;
   int tga_palette_start = get16le(s);
   int tga_palette_len = get16le(s);
   int tga_palette_bits = get8u(s);
   int tga_x_origin = get16le(s);
   int tga_y_origin = get16le(s);
   int tga_width = get16le(s);
   int tga_height = get16le(s);
   int tga_bits_per_pixel = get8u(s);
   int tga_comp = tga_bits_per_pixel / 8;
   int tga_inverted = get8u(s);

   unsigned char *tga_data;
   unsigned char *tga_palette = ((void*)0);
   int i, j;
   unsigned char raw_data[4];
   int RLE_count = 0;
   int RLE_repeating = 0;
   int read_next_pixel = 1;


   if ( tga_image_type >= 8 )
   {
      tga_image_type -= 8;
      tga_is_RLE = 1;
   }

   tga_inverted = 1 - ((tga_inverted >> 5) & 1);


   if (
      (tga_width < 1) || (tga_height < 1) ||
      (tga_image_type < 1) || (tga_image_type > 3) ||
      ((tga_bits_per_pixel != 8) && (tga_bits_per_pixel != 16) &&
      (tga_bits_per_pixel != 24) && (tga_bits_per_pixel != 32))
      )
   {
      return ((void*)0);
   }


   if ( tga_indexed )
   {
      tga_comp = tga_palette_bits / 8;
   }


   *x = tga_width;
   *y = tga_height;
   if (comp) *comp = tga_comp;

   tga_data = (unsigned char*)malloc( tga_width * tga_height * req_comp );
   if (!tga_data) return epuc("outofmem", "Out of memory");


   skip(s, tga_offset );

   if ( !tga_indexed && !tga_is_RLE) {
      for (i=0; i < tga_height; ++i) {
         int y = tga_inverted ? tga_height -i - 1 : i;
         stbi__uint8 *tga_row = tga_data + y*tga_width*tga_comp;
         getn(s, tga_row, tga_width * tga_comp);
      }
   } else {

      if ( tga_indexed)
      {

         skip(s, tga_palette_start );

         tga_palette = (unsigned char*)malloc( tga_palette_len * tga_palette_bits / 8 );
         if (!tga_palette) {
            free(tga_data);
            return epuc("outofmem", "Out of memory");
         }
         if (!getn(s, tga_palette, tga_palette_len * tga_palette_bits / 8 )) {
            free(tga_data);
            free(tga_palette);
            return epuc("bad palette", "Corrupt TGA");
         }
      }

      for (i=0; i < tga_width * tga_height; ++i)
      {

         if ( tga_is_RLE )
         {
            if ( RLE_count == 0 )
            {

               int RLE_cmd = get8u(s);
               RLE_count = 1 + (RLE_cmd & 127);
               RLE_repeating = RLE_cmd >> 7;
               read_next_pixel = 1;
            } else if ( !RLE_repeating )
            {
               read_next_pixel = 1;
            }
         } else
         {
            read_next_pixel = 1;
         }

         if ( read_next_pixel )
         {

            if ( tga_indexed )
            {

               int pal_idx = get8u(s);
               if ( pal_idx >= tga_palette_len )
               {

                  pal_idx = 0;
               }
               pal_idx *= tga_bits_per_pixel / 8;
               for (j = 0; j*8 < tga_bits_per_pixel; ++j)
               {
                  raw_data[j] = tga_palette[pal_idx+j];
               }
            } else
            {

               for (j = 0; j*8 < tga_bits_per_pixel; ++j)
               {
                  raw_data[j] = get8u(s);
               }
            }

            read_next_pixel = 0;
         }


         for (j = 0; j < tga_comp; ++j)
           tga_data[i*tga_comp+j] = raw_data[j];


         --RLE_count;
      }

      if ( tga_inverted )
      {
         for (j = 0; j*2 < tga_height; ++j)
         {
            int index1 = j * tga_width * req_comp;
            int index2 = (tga_height - 1 - j) * tga_width * req_comp;
            for (i = tga_width * req_comp; i > 0; --i)
            {
               unsigned char temp = tga_data[index1];
               tga_data[index1] = tga_data[index2];
               tga_data[index2] = temp;
               ++index1;
               ++index2;
            }
         }
      }

      if ( tga_palette != ((void*)0) )
      {
         free( tga_palette );
      }
   }


   if (tga_comp >= 3)
   {
      unsigned char* tga_pixel = tga_data;
      for (i=0; i < tga_width * tga_height; ++i)
      {
         unsigned char temp = tga_pixel[0];
         tga_pixel[0] = tga_pixel[2];
         tga_pixel[2] = temp;
         tga_pixel += tga_comp;
      }
   }


   if (req_comp && req_comp != tga_comp)
      tga_data = convert_format(tga_data, tga_comp, req_comp, tga_width, tga_height);



   tga_palette_start = tga_palette_len = tga_palette_bits =
         tga_x_origin = tga_y_origin = 0;

   return tga_data;
}
