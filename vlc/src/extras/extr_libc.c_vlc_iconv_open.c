
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_iconv_t ;
struct TYPE_6__ {int converttype; } ;
typedef TYPE_1__ uconv_attribute_t ;
struct TYPE_7__ {int from; } ;
typedef TYPE_2__ os2_iconv_t ;
typedef TYPE_2__* iconv_t ;


 int CVTTYPE_PATH ;
 int UniQueryUconvObject (int ,TYPE_1__*,int,int *,int *,int *) ;
 int UniSetUconvObject (int ,TYPE_1__*) ;
 scalar_t__ iconv_open (char const*,char const*) ;
 int strcasecmp (char const*,char*) ;
 int strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,int) ;

vlc_iconv_t vlc_iconv_open( const char *tocode, const char *fromcode )
{
    return (vlc_iconv_t)(-1);

}
