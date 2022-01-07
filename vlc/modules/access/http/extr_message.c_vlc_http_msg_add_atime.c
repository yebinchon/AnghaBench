
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vlc_http_msg {int dummy; } ;


 int time (int *) ;
 int vlc_http_msg_add_time (struct vlc_http_msg*,char*,int *) ;

int vlc_http_msg_add_atime(struct vlc_http_msg *m)
{
    time_t now;

    time(&now);
    return vlc_http_msg_add_time(m, "Date", &now);
}
