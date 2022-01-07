
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct smartypants_data {int dummy; } ;
struct buf {int dummy; } ;


 size_t smartypants_squote (struct buf*,struct smartypants_data*,int ,int const*,size_t,int const*,int) ;

__attribute__((used)) static size_t
smartypants_cb__squote(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
 return smartypants_squote(ob, smrt, previous_char, text, size, text, 1);
}
