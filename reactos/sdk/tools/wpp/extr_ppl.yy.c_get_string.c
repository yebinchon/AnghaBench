
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,int ,int) ;
 char* pp_xmalloc (int) ;
 int strbuf_idx ;
 int strbuffer ;

__attribute__((used)) static char *get_string(void)
{
 char *str = pp_xmalloc(strbuf_idx + 1);
 if(!str)
  return ((void*)0);
 memcpy(str, strbuffer, strbuf_idx);
 str[strbuf_idx] = '\0';



 return str;
}
