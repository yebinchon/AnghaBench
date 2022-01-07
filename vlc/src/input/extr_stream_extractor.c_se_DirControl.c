
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int stream_t ;


 int VLC_EGENERIC ;

__attribute__((used)) static int
se_DirControl( stream_t* stream, int req, va_list args )
{
    (void)stream;
    (void)req;
    (void)args;

    return VLC_EGENERIC;
}
