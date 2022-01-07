
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;


 int lzc_send_space_resume_redacted (char const*,char const*,int,int ,int ,int ,int *,int,int *) ;

int
lzc_send_space(const char *snapname, const char *from,
    enum lzc_send_flags flags, uint64_t *spacep)
{
 return (lzc_send_space_resume_redacted(snapname, from, flags, 0, 0, 0,
     ((void*)0), -1, spacep));
}
