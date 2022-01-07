
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 size_t MB ;
 int expand_number (char const*,int *) ;
 size_t strtoul (char const*,char**,int ) ;

__attribute__((used)) static int
parse_memsize(const char *opt, size_t *ret_memsize)
{
 char *endptr;
 size_t optval;
 int error;

 optval = strtoul(opt, &endptr, 0);
 if (*opt != '\0' && *endptr == '\0') {





  if (optval < MB)
   optval *= MB;
  *ret_memsize = optval;
  error = 0;
 } else
  error = expand_number(opt, ((uint64_t *) ret_memsize));

 return (error);
}
