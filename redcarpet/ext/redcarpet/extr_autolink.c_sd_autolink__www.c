
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct buf {int dummy; } ;


 size_t autolink_delim (int *,size_t,size_t,size_t) ;
 int bufput (struct buf*,int *,size_t) ;
 size_t check_domain (int *,size_t,int ) ;
 int ispunct (int ) ;
 int isspace (int ) ;
 scalar_t__ memcmp (int *,char*,int ) ;
 int strlen (char*) ;

size_t
sd_autolink__www(
 size_t *rewind_p,
 struct buf *link,
 uint8_t *data,
 size_t max_rewind,
 size_t size,
 unsigned int flags)
{
 size_t link_end;

 if (max_rewind > 0 && !ispunct(data[-1]) && !isspace(data[-1]))
  return 0;

 if (size < 4 || memcmp(data, "www.", strlen("www.")) != 0)
  return 0;

 link_end = check_domain(data, size, 0);

 if (link_end == 0)
  return 0;

 while (link_end < size && !isspace(data[link_end]))
  link_end++;

 link_end = autolink_delim(data, link_end, max_rewind, size);

 if (link_end == 0)
  return 0;

 bufput(link, data, link_end);
 *rewind_p = 0;

 return (int)link_end;
}
