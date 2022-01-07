
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;


 int AF_LOCAL ;
 int ANET_CONNECT_NONBLOCK ;
 int ANET_ERR ;
 scalar_t__ ANET_OK ;
 scalar_t__ EINPROGRESS ;
 int anetCreateSocket (char*,int ) ;
 scalar_t__ anetNonBlock (char*,int) ;
 int anetSetError (char*,char*,int ) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int strerror (scalar_t__) ;
 int strncpy (int ,char const*,int) ;

int anetUnixGenericConnect(char *err, const char *path, int flags)
{
    int s;
    struct sockaddr_un sa;

    if ((s = anetCreateSocket(err,AF_LOCAL)) == ANET_ERR)
        return ANET_ERR;

    sa.sun_family = AF_LOCAL;
    strncpy(sa.sun_path,path,sizeof(sa.sun_path)-1);
    if (flags & ANET_CONNECT_NONBLOCK) {
        if (anetNonBlock(err,s) != ANET_OK) {
            close(s);
            return ANET_ERR;
        }
    }
    if (connect(s,(struct sockaddr*)&sa,sizeof(sa)) == -1) {
        if (errno == EINPROGRESS &&
            flags & ANET_CONNECT_NONBLOCK)
            return s;

        anetSetError(err, "connect: %s", strerror(errno));
        close(s);
        return ANET_ERR;
    }
    return s;
}
