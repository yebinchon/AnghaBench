
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_decoder_device ;
typedef int decoder_t ;



__attribute__((used)) static vlc_decoder_device * get_no_device( decoder_t *dec )
{
    (void) dec;

    return ((void*)0);
}
