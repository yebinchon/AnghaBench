
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int fill; int * p; } ;
typedef TYPE_1__ mpg123_string ;


 unsigned long FULLPOINT (unsigned long,unsigned short) ;
 scalar_t__ UTF8LEN (unsigned long) ;
 int check_bom (unsigned char const**,size_t*) ;
 int debug1 (char*,int) ;
 int error2 (char*,unsigned long,unsigned long) ;
 int mpg123_free_string (TYPE_1__*) ;
 int mpg123_resize_string (TYPE_1__*,size_t) ;

__attribute__((used)) static void convert_utf16bom(mpg123_string *sb, const unsigned char* s, size_t l, const int noquiet)
{
 size_t i;
 size_t n;
 unsigned char *p;
 size_t length = 0;

 size_t high = 0;
 size_t low = 1;
 int bom_endian;

 debug1("convert_utf16 with length %lu", (unsigned long)l);

 bom_endian = check_bom(&s, &l);
 debug1("UTF16 endianness check: %i", bom_endian);

 if(bom_endian == -1)
 {
  high = 1;
  low = 0;
 }

 n = (l/2)*2;


 for(i=0; i < n; i+=2)
 {
  unsigned long point = ((unsigned long) s[i+high]<<8) + s[i+low];
  if((point & 0xfc00) == 0xd800)
  {
   unsigned short second = (i+3 < l) ? (s[i+2+high]<<8) + s[i+2+low] : 0;
   if((second & 0xfc00) == 0xdc00)
   {
    point = FULLPOINT(point,second);
    length += UTF8LEN(point);
    i+=2;
   }
   else
   {
    if(noquiet) error2("Invalid UTF16 surrogate pair at %li (0x%04lx).", (unsigned long)i, point);
    n = i;
    break;
   }
  }
  else length += UTF8LEN(point);
 }

 if(!mpg123_resize_string(sb, length+1)){ mpg123_free_string(sb); return ; }


 p = (unsigned char*) sb->p;
 for(i=0; i < n; i+=2)
 {
  unsigned long codepoint = ((unsigned long) s[i+high]<<8) + s[i+low];
  if((codepoint & 0xfc00) == 0xd800)
  {
   unsigned short second = (s[i+2+high]<<8) + s[i+2+low];
   codepoint = FULLPOINT(codepoint,second);
   i+=2;
  }
  if(codepoint < 0x80) *p++ = (unsigned char) codepoint;
  else if(codepoint < 0x800)
  {
   *p++ = (unsigned char) (0xc0 | (codepoint>>6));
   *p++ = (unsigned char) (0x80 | (codepoint & 0x3f));
  }
  else if(codepoint < 0x10000)
  {
   *p++ = (unsigned char) (0xe0 | (codepoint>>12));
   *p++ = 0x80 | ((codepoint>>6) & 0x3f);
   *p++ = 0x80 | (codepoint & 0x3f);
  }
  else if (codepoint < 0x200000)
  {
   *p++ = (unsigned char) (0xf0 | codepoint>>18);
   *p++ = (unsigned char) (0x80 | ((codepoint>>12) & 0x3f));
   *p++ = (unsigned char) (0x80 | ((codepoint>>6) & 0x3f));
   *p++ = (unsigned char) (0x80 | (codepoint & 0x3f));
  }
 }
 sb->p[sb->size-1] = 0;
 sb->fill = sb->size;
}
