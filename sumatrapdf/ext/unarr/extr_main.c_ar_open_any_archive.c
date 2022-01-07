
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ar_stream ;
typedef int ar_archive ;


 int * ar_open_7z_archive (int *) ;
 int * ar_open_rar_archive (int *) ;
 int * ar_open_tar_archive (int *) ;
 int * ar_open_zip_archive (int *,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

ar_archive *ar_open_any_archive(ar_stream *stream, const char *fileext)
{
    ar_archive *ar = ar_open_rar_archive(stream);
    if (!ar)
        ar = ar_open_zip_archive(stream, fileext && (strcmp(fileext, ".xps") == 0 || strcmp(fileext, ".epub") == 0));
    if (!ar)
        ar = ar_open_7z_archive(stream);
    if (!ar)
        ar = ar_open_tar_archive(stream);
    return ar;
}
