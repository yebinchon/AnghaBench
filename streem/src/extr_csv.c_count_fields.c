
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;


 int strm_str_len (int ) ;
 char* strm_str_ptr (int ) ;

__attribute__((used)) static int
count_fields(strm_string line, char sep)
{
  const char *ptr = strm_str_ptr(line);
  const char *pend = ptr + strm_str_len(line);
  int cnt, quoted = 0;

  for (cnt = 1; ptr<pend; ptr++) {
    if (quoted) {
      if (ptr[0] == '\"') {
        if (ptr[1] == '\"') {
          ptr++;
          continue;
        }
        quoted = 0;
      }
      continue;
    }

    switch(*ptr) {
    case '\"':
      quoted = 1;
      continue;
    case ',':
    case '\t':
      if (*ptr == sep)
        cnt++;
      continue;
    default:
      continue;
    }
  }

  if (quoted)
    return -1;

  return cnt;
}
