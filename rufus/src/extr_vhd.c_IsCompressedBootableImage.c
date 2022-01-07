
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int type; int ext; } ;
struct TYPE_4__ {int compression_type; } ;
typedef int BOOL ;


 int ARRAYSIZE (TYPE_2__*) ;
 int BLED_COMPRESSION_NONE ;
 int FALSE ;
 scalar_t__ FormatStatus ;
 scalar_t__ MBR_SIZE ;
 int _uprintf ;
 int bled_exit () ;
 int bled_init (int ,int *,scalar_t__*) ;
 scalar_t__ bled_uncompress_to_buffer (char const*,char*,scalar_t__,int ) ;
 TYPE_2__* file_assoc ;
 int free (unsigned char*) ;
 TYPE_1__ img_report ;
 unsigned char* malloc (scalar_t__) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char const*) ;

BOOL IsCompressedBootableImage(const char* path)
{
 char *p;
 unsigned char *buf = ((void*)0);
 int i;
 BOOL r = FALSE;
 int64_t dc;

 img_report.compression_type = BLED_COMPRESSION_NONE;
 for (p = (char*)&path[strlen(path)-1]; (*p != '.') && (p != path); p--);

 if (p == path)
  return FALSE;

 for (i = 0; i<ARRAYSIZE(file_assoc); i++) {
  if (strcmp(p, file_assoc[i].ext) == 0) {
   img_report.compression_type = file_assoc[i].type;
   buf = malloc(MBR_SIZE);
   if (buf == ((void*)0))
    return FALSE;
   FormatStatus = 0;
   bled_init(_uprintf, ((void*)0), &FormatStatus);
   dc = bled_uncompress_to_buffer(path, (char*)buf, MBR_SIZE, file_assoc[i].type);
   bled_exit();
   if (dc != MBR_SIZE) {
    free(buf);
    return FALSE;
   }
   r = (buf[0x1FE] == 0x55) && (buf[0x1FF] == 0xAA);
   free(buf);
   return r;
  }
 }

 return FALSE;
}
