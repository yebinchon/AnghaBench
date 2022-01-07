
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int va_list ;


 int SUBPICTURE_ALIGN_RIGHT ;
 int SUBPICTURE_ALIGN_TOP ;
 int VLC_TICK_FROM_SEC (int) ;
 int free (char*) ;
 int vasprintf (char**,char const*,int ) ;
 int vout_OSDText (int *,int,int,int ,char*) ;

void vout_OSDMessageVa(vout_thread_t *vout, int channel,
                       const char *format, va_list args)
{
    char *string;
    if (vasprintf(&string, format, args) != -1) {
        vout_OSDText(vout, channel,
                     SUBPICTURE_ALIGN_TOP|SUBPICTURE_ALIGN_RIGHT, VLC_TICK_FROM_SEC(1),
                     string);
        free(string);
    }
}
