
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int sv (int *,int,int *,int *,char) ;

__attribute__((used)) static int
tsv(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  return sv(strm, argc, args, ret, '\t');
}
