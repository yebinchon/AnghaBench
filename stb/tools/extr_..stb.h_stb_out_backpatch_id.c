
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ftell (int ) ;
 scalar_t__ stb__out ;
 int stb__outfile ;

__attribute__((used)) static size_t stb_out_backpatch_id(void)
{
   if (stb__out)
      return (size_t) stb__out;
   else
      return ftell(stb__outfile);
}
