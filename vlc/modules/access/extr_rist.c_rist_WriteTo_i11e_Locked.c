
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mutex_t ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int rist_WriteTo_i11e (int,void const*,size_t,struct sockaddr const*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void rist_WriteTo_i11e_Locked(vlc_mutex_t lock, int fd, const void *buf, size_t len,
    const struct sockaddr *peer, socklen_t slen)
{
    vlc_mutex_lock( &lock );
    rist_WriteTo_i11e(fd, buf, len, peer, slen);
    vlc_mutex_unlock( &lock );
}
