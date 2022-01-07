
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;
typedef int input_item_t ;
typedef enum input_item_preparse_status { ____Placeholder_input_item_preparse_status } input_item_preparse_status ;


 int ITEM_PREPARSE_TIMEOUT ;
 int VLC_UNUSED (int *) ;
 int assert (int) ;
 int vlc_sem_post (int *) ;

__attribute__((used)) static void input_item_preparse_timeout( input_item_t *item,
                                         enum input_item_preparse_status status,
                                         void *user_data )
{
    VLC_UNUSED(item);
    vlc_sem_t *p_sem = user_data;

    assert( status == ITEM_PREPARSE_TIMEOUT );
    vlc_sem_post(p_sem);
}
