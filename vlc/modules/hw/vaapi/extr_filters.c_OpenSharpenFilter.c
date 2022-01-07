
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int OpenBasicFilter (int *,int ,char*,int *) ;
 int VAProcFilterSharpening ;
 int vlc_sharpen_sigma_range ;

__attribute__((used)) static int
OpenSharpenFilter(vlc_object_t * obj)
{
    return OpenBasicFilter(obj, VAProcFilterSharpening, "sharpen-sigma",
                           &vlc_sharpen_sigma_range);
}
