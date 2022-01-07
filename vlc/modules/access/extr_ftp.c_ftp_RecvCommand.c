
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int access_sys_t ;


 int DummyLine ;
 int ftp_RecvAnswer (int *,int *,int*,char**,int ,int *) ;

__attribute__((used)) static int ftp_RecvCommand( vlc_object_t *obj, access_sys_t *sys,
                            int *restrict codep, char **restrict strp )
{
    return ftp_RecvAnswer( obj, sys, codep, strp, DummyLine, ((void*)0) );
}
