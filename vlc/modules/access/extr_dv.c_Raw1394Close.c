
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int raw1394handle_t ;


 int raw1394_destroy_handle (int ) ;

__attribute__((used)) static void Raw1394Close( raw1394handle_t handle )
{
    raw1394_destroy_handle( handle );
}
