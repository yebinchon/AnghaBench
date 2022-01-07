
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_attachment_t ;


 int VLC_UNUSED (void*) ;
 int vlc_input_attachment_Delete (int *) ;

__attribute__((used)) static void FreeDictAttachment( void *p_value, void *p_obj )
{
    VLC_UNUSED(p_obj);
    vlc_input_attachment_Delete( (input_attachment_t *) p_value );
}
