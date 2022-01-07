
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long position; } ;
struct TYPE_3__ {unsigned long position; } ;
struct chunk_header {TYPE_2__ new; TYPE_1__ old; } ;


 int parse_chunk_header (struct chunk_header*,char const*) ;

bool
parse_chunk_lineno(unsigned long *lineno, const char *chunk, int marker)
{
 struct chunk_header chunk_header;

 *lineno = 0;

 if (!parse_chunk_header(&chunk_header, chunk))
  return 0;

 *lineno = marker == '-' ? chunk_header.old.position : chunk_header.new.position;
 return 1;
}
