
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8 ;
typedef int stb_vorbis ;
struct TYPE_3__ {char last_decoded_sample; scalar_t__ page_start; scalar_t__ page_end; } ;
typedef TYPE_1__ ProbedPage ;


 int getn (int *,char*,char) ;
 int set_file_offset (int *,scalar_t__) ;
 scalar_t__ stb_vorbis_get_file_offset (int *) ;

__attribute__((used)) static int get_seek_page_info(stb_vorbis *f, ProbedPage *z)
{
   uint8 header[27], lacing[255];
   int i,len;


   z->page_start = stb_vorbis_get_file_offset(f);


   getn(f, header, 27);
   if (header[0] != 'O' || header[1] != 'g' || header[2] != 'g' || header[3] != 'S')
      return 0;
   getn(f, lacing, header[26]);


   len = 0;
   for (i=0; i < header[26]; ++i)
      len += lacing[i];


   z->page_end = z->page_start + 27 + header[26] + len;


   z->last_decoded_sample = header[6] + (header[7] << 8) + (header[8] << 16) + (header[9] << 24);


   set_file_offset(f, z->page_start);
   return 1;
}
