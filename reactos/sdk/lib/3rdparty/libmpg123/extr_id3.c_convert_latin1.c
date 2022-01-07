
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t fill; int * p; } ;
typedef TYPE_1__ mpg123_string ;


 int debug1 (char*,unsigned long) ;
 int mpg123_free_string (TYPE_1__*) ;
 int mpg123_resize_string (TYPE_1__*,size_t) ;

__attribute__((used)) static void convert_latin1(mpg123_string *sb, const unsigned char* s, size_t l, const int noquiet)
{
 size_t length = l;
 size_t i;
 unsigned char *p;

 for(i=0; i<l; ++i)
 if(s[i] >= 0x80) ++length;

 debug1("UTF-8 length: %lu", (unsigned long)length);

 if(!mpg123_resize_string(sb, length+1)){ mpg123_free_string(sb); return ; }

 p = (unsigned char*) sb->p;
 for(i=0; i<l; ++i)
 if(s[i] < 0x80){ *p = s[i]; ++p; }
 else
 {
  *p = 0xc0 | (s[i]>>6);
  *(p+1) = 0x80 | (s[i] & 0x3f);
  p+=2;
 }

 sb->p[length] = 0;
 sb->fill = length+1;
}
