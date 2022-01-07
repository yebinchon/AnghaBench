
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int picture_t ;


 int picture_Release (int *) ;

__attribute__((used)) static void lavc_ReleaseFrame(void *opaque, uint8_t *data)
{
    (void) data;
    picture_t *picture = opaque;

    picture_Release(picture);
}
