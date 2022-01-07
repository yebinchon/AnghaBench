
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {char* member_0; size_t member_1; char const* data; } ;
typedef int iconv_t ;


 scalar_t__ encoding_convert_string (int ,struct buffer*) ;
 int free (char*) ;
 char* strndup (char const*,size_t) ;

const char *
encoding_iconv(iconv_t iconv_cd, const char *string, size_t length)
{
 char *instr = strndup(string, length);
 struct buffer buf = { instr, length };
 const char *ret = buf.data && encoding_convert_string(iconv_cd, &buf) ? buf.data : string;

 free(instr);
 return ret == instr ? string : ret;
}
