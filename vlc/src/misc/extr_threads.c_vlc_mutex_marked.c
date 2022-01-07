
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mutex_t ;


 int vlc_lock_marked (int const*,int *) ;
 int vlc_mutex_marks ;

bool vlc_mutex_marked(const vlc_mutex_t *mutex)
{
    return vlc_lock_marked(mutex, &vlc_mutex_marks);
}
