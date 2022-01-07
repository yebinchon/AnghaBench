
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;


 int lzc_send_resume_redacted (char const*,char const*,int,int,int ,int ,char const*) ;

int
lzc_send_redacted(const char *snapname, const char *from, int fd,
    enum lzc_send_flags flags, const char *redactbook)
{
 return (lzc_send_resume_redacted(snapname, from, fd, flags, 0, 0,
     redactbook));
}
