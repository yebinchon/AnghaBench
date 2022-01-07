
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const sout_instance_t ;
typedef char const input_resource_t ;


 int DestroySout (char const*) ;
 int VLC_UNUSED (char const*) ;
 int assert (int) ;
 int msg_Dbg (char*,char*) ;
 char* sout_NewInstance (char*,char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static sout_instance_t *RequestSout( input_resource_t *p_resource,
                                     sout_instance_t *p_sout, const char *psz_sout )
{
    VLC_UNUSED (p_resource); VLC_UNUSED (p_sout); VLC_UNUSED (psz_sout);
    return ((void*)0);

}
