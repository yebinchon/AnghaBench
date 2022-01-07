
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int p_header_extension_data; } ;
struct TYPE_4__ {TYPE_2__ header_extension; } ;
typedef TYPE_1__ asf_object_t ;
typedef TYPE_2__ asf_object_header_extension_t ;


 int FREENULL (int ) ;

__attribute__((used)) static void ASF_FreeObject_header_extension( asf_object_t *p_obj )
{
    asf_object_header_extension_t *p_he = &p_obj->header_extension;

    FREENULL( p_he->p_header_extension_data );
}
