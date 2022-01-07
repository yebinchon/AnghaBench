
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_token_data_buffer (char const*,unsigned int,char const*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static __inline char* get_sanitized_token_data_buffer(const char* token, unsigned int n, const char* buffer, size_t buffer_size)
{
 size_t i;
 char* data = get_token_data_buffer(token, n, buffer, buffer_size);
 if (data != ((void*)0)) {
  for (i=0; i<strlen(data); i++) {
   if ((data[i] == '\\') && (data[i+1] == 'n')) {
    data[i] = '\r';
    data[i+1] = '\n';
   }
  }
 }
 return data;
}
