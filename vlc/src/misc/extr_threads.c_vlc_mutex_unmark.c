
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mutex_t ;


 int vlc_lock_unmark (int const*,int *) ;
 int vlc_mutex_marks ;

void vlc_mutex_unmark(const vlc_mutex_t *mutex)
{
    vlc_lock_unmark(mutex, &vlc_mutex_marks);
}
