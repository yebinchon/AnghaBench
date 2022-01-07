
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lines; int position; } ;
struct TYPE_3__ {int lines; int position; } ;
struct chunk_header {TYPE_2__ new; TYPE_1__ old; } ;


 int STRING_SIZE (char*) ;
 int memset (struct chunk_header*,int ,int) ;
 scalar_t__ parse_ulong (char const**,int*,char,int) ;
 int prefixcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

bool
parse_chunk_header(struct chunk_header *header, const char *line)
{
 memset(header, 0, sizeof(*header));
 header->new.lines = header->old.lines = 1;

 if (!prefixcmp(line, "@@ -"))
  line += STRING_SIZE("@@ -") - 1;
 else if (!prefixcmp(line, "@@@") &&
   (line = strrchr(line, '-')))
                          ;
 else
  return 0;

 return parse_ulong(&line, &header->old.position, '-', 0) &&
  parse_ulong(&line, &header->old.lines, ',', 1) &&
  parse_ulong(&line, &header->new.position, '+', 0) &&
  parse_ulong(&line, &header->new.lines, ',', 0);
}
