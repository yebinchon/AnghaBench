
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int outfifo; int pf_convert; int pf_write_url; int pf_write; int pf_read_url; int pf_read; int * p_parent; } ;
typedef TYPE_1__ image_handler_t ;


 int ImageConvert ;
 int ImageRead ;
 int ImageReadUrl ;
 int ImageWrite ;
 int ImageWriteUrl ;
 TYPE_1__* calloc (int,int) ;
 int picture_fifo_New () ;

image_handler_t *image_HandlerCreate( vlc_object_t *p_this )
{
    image_handler_t *p_image = calloc( 1, sizeof(image_handler_t) );
    if( !p_image )
        return ((void*)0);

    p_image->p_parent = p_this;

    p_image->pf_read = ImageRead;
    p_image->pf_read_url = ImageReadUrl;
    p_image->pf_write = ImageWrite;
    p_image->pf_write_url = ImageWriteUrl;
    p_image->pf_convert = ImageConvert;

    p_image->outfifo = picture_fifo_New();

    return p_image;
}
