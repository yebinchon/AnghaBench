
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
typedef int Texture ;
struct TYPE_3__ {int bmBits; int bmHeight; int bmWidth; } ;
typedef scalar_t__ HBITMAP ;
typedef int BMP ;
typedef TYPE_1__ BITMAP ;


 int GL_BGR_EXT ;
 int GL_LINEAR ;
 int GL_LINEAR_MIPMAP_LINEAR ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNSIGNED_BYTE ;
 int GetModuleHandle (int *) ;
 int GetObject (scalar_t__,int,TYPE_1__*) ;
 int IDB_BUTTERFLY1 ;
 int IDB_BUTTERFLY2 ;
 int IDB_BUTTERFLY3 ;
 int IMAGE_BITMAP ;
 int LR_CREATEDIBSECTION ;
 scalar_t__ LoadImage (int ,int ,int ,int ,int ,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int glBindTexture (int ,int ) ;
 int glGenTextures (int,int *) ;
 int glPixelStorei (int ,int) ;
 int glTexParameteri (int ,int ,int ) ;
 int gluBuild2DMipmaps (int ,int,int ,int ,int ,int ,int ) ;
 int * texture ;

void LoadGLTextures()
{
 HBITMAP hBMP;
 BITMAP BMP;
    int loop;


 byte Texture[]={ IDB_BUTTERFLY1, IDB_BUTTERFLY2, IDB_BUTTERFLY3 };

 glGenTextures(sizeof(Texture), &texture[0]);
 for (loop=0; loop<sizeof(Texture); loop++)
 {
  hBMP=(HBITMAP)LoadImage(GetModuleHandle(((void*)0)),MAKEINTRESOURCE(Texture[loop]), IMAGE_BITMAP, 0, 0, LR_CREATEDIBSECTION);
  if (hBMP)
  {
   GetObject(hBMP,sizeof(BMP), &BMP);



   glPixelStorei(GL_UNPACK_ALIGNMENT,4);
   glBindTexture(GL_TEXTURE_2D, texture[loop]);
   glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
   glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR_MIPMAP_LINEAR);


   gluBuild2DMipmaps(GL_TEXTURE_2D, 3, BMP.bmWidth, BMP.bmHeight, GL_BGR_EXT, GL_UNSIGNED_BYTE, BMP.bmBits);
  }
 }
}
