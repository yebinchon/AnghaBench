
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put_buffer (int ,scalar_t__) ;
 scalar_t__ strbuf_idx ;
 int strbuffer ;

__attribute__((used)) static void put_string(void)
{
 put_buffer(strbuffer, strbuf_idx);



}
