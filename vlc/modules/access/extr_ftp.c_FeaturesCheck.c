
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_unicode; int b_authtls; int b_mlst; } ;
typedef TYPE_1__ ftp_features_t ;


 int * strcasestr (char const*,char*) ;

__attribute__((used)) static void FeaturesCheck( void *opaque, const char *feature )
{
    ftp_features_t *features = opaque;

    if( strcasestr( feature, "UTF8" ) != ((void*)0) )
        features->b_unicode = 1;
    else
    if( strcasestr( feature, "AUTH TLS" ) != ((void*)0) )
        features->b_authtls = 1;

    if( strcasestr( feature, "MLST" ) != ((void*)0) )
        features->b_mlst = 1;
}
