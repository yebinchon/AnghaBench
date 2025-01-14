
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct buf {int dummy; } ;


 size_t autolink_delim (char*,size_t,size_t,size_t) ;
 int bufput (struct buf*,char*,size_t) ;
 scalar_t__ isalnum (char) ;
 int * strchr (char*,char) ;

size_t
sd_autolink__email(
 size_t *rewind_p,
 struct buf *link,
 uint8_t *data,
 size_t max_rewind,
 size_t size,
 unsigned int flags)
{
 size_t link_end, rewind;
 int nb = 0, np = 0;

 for (rewind = 0; rewind < max_rewind; ++rewind) {
  uint8_t c = data[-rewind - 1];

  if (isalnum(c))
   continue;

  if (strchr(".+-_", c) != ((void*)0))
   continue;

  break;
 }

 if (rewind == 0)
  return 0;

 for (link_end = 0; link_end < size; ++link_end) {
  uint8_t c = data[link_end];

  if (isalnum(c))
   continue;

  if (c == '@')
   nb++;
  else if (c == '.' && link_end < size - 1)
   np++;
  else if (c != '-' && c != '_')
   break;
 }

 if (link_end < 2 || nb != 1 || np == 0)
  return 0;

 link_end = autolink_delim(data, link_end, max_rewind, size);

 if (link_end == 0)
  return 0;

 bufput(link, data - rewind, link_end + rewind);
 *rewind_p = rewind;

 return link_end;
}
