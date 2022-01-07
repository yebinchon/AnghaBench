
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_Get_Char_Index (void*,int) ;

int ft_char_index(void *face, int cid)
{
 int gid = FT_Get_Char_Index(face, cid);
 if (gid == 0)
  gid = FT_Get_Char_Index(face, 0xf000 + cid);


 if (gid == 0 && cid == 0x22ef)
  gid = FT_Get_Char_Index(face, 0x2026);

 return gid;
}
