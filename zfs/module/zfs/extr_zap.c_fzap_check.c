
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_name_t ;
typedef int uint64_t ;


 int fzap_checkname (int *) ;
 int fzap_checksize (int ,int ) ;

__attribute__((used)) static int
fzap_check(zap_name_t *zn, uint64_t integer_size, uint64_t num_integers)
{
 int err = fzap_checkname(zn);
 if (err != 0)
  return (err);
 return (fzap_checksize(integer_size, num_integers));
}
