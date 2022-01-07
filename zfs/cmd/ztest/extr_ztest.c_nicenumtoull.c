
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int B_FALSE ;
 double UINT64_MAX ;
 int fprintf (int ,char*,char const*) ;
 double pow (int,int) ;
 int stderr ;
 int str2shift (char*) ;
 double strtod (char const*,char**) ;
 int strtoull (char const*,char**,int ) ;
 int usage (int ) ;

__attribute__((used)) static uint64_t
nicenumtoull(const char *buf)
{
 char *end;
 uint64_t val;

 val = strtoull(buf, &end, 0);
 if (end == buf) {
  (void) fprintf(stderr, "ztest: bad numeric value: %s\n", buf);
  usage(B_FALSE);
 } else if (end[0] == '.') {
  double fval = strtod(buf, &end);
  fval *= pow(2, str2shift(end));
  if (fval > UINT64_MAX) {
   (void) fprintf(stderr, "ztest: value too large: %s\n",
       buf);
   usage(B_FALSE);
  }
  val = (uint64_t)fval;
 } else {
  int shift = str2shift(end);
  if (shift >= 64 || (val << shift) >> shift != val) {
   (void) fprintf(stderr, "ztest: value too large: %s\n",
       buf);
   usage(B_FALSE);
  }
  val <<= shift;
 }
 return (val);
}
