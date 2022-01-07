
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;


 int msg_Dbg (int *,char*,char const*) ;

__attribute__((used)) static void messages_callback_handler( void *p_opaque, const char *psz_message )
{
    decoder_t *p_dec = ( decoder_t * ) p_opaque;
    msg_Dbg( p_dec, "%s", psz_message );
}
