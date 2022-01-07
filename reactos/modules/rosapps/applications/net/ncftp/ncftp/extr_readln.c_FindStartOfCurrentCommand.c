
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* gl_buf ;
 int isspace (int) ;

__attribute__((used)) static char *
FindStartOfCurrentCommand(void)
{
 char *scp;
 char *start;
 int qc;

 for (scp = gl_buf;;) {
  start = scp;
  for (;;) {
   if (*scp == '\0')
    goto done;
   if (!isspace((int) *scp))
    break;
   scp++;
  }
  start = scp;

  for (;;) {
   if (*scp == '\0') {
    goto done;
   } else if ((*scp == '"') || (*scp == '\'')) {
    qc = *scp++;

    for (;;) {
     if (*scp == '\0') {
      goto done;
     } else if (*scp == '\\') {
      scp++;
      if (*scp == '\0')
       goto done;
      scp++;
     } else if (*scp == qc) {
      scp++;
      break;
     } else {
      scp++;
     }
    }
   } else if (*scp == '\\') {
    scp++;
    if (*scp == '\0')
     goto done;
    scp++;
   } else if ((*scp == ';') || (*scp == '\n')) {

    scp++;
    if (*scp == '\0')
     goto done;
    break;
   } else {
    scp++;
   }
  }
 }
done:
 return (start);
}
