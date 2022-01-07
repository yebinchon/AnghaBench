
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int access_sys_t ;


 int DummyLine ;
 int ftp_RecvReply (int *,int *,int *,int ,int *) ;

__attribute__((used)) static int ftp_RecvCommandInit( vlc_object_t *obj, access_sys_t *sys )
{
    int val = ftp_RecvReply( obj, sys, ((void*)0), DummyLine, ((void*)0) );
    if( val >= 0 )
        val /= 100;
    return val;
}
