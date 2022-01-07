
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_vorbis ;


 int setup_free (int *,int *) ;
 int vorbis_deinit (int *) ;

void stb_vorbis_close(stb_vorbis *p)
{
   if (p == ((void*)0)) return;
   vorbis_deinit(p);
   setup_free(p,p);
}
