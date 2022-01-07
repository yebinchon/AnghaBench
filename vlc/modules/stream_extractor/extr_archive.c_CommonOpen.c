
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int stream_t ;
typedef int private_sys_t ;


 int CommonClose (int *) ;
 scalar_t__ archive_init (int *,int *) ;
 scalar_t__ probe (int *) ;
 int * setup (int *,int *) ;

__attribute__((used)) static private_sys_t* CommonOpen( vlc_object_t* p_obj, stream_t* source )
{
    if( probe( source ) )
        return ((void*)0);

    private_sys_t* p_sys = setup( p_obj, source );

    if( p_sys == ((void*)0) )
        return ((void*)0);

    if( archive_init( p_sys, source ) )
    {
        CommonClose( p_sys );
        return ((void*)0);
    }

    return p_sys;
}
