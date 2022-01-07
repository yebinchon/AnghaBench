
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int p_sys; } ;
typedef TYPE_1__ stream_directory_t ;


 void CommonClose (int ) ;

__attribute__((used)) static void DirectoryClose( vlc_object_t* p_obj )
{
    stream_directory_t* p_directory = (void*)p_obj;
    return CommonClose( p_directory->p_sys );
}
