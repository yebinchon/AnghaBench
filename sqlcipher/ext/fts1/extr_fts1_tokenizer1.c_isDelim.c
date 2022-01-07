
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* delim; } ;
typedef TYPE_1__ simple_tokenizer ;



__attribute__((used)) static int isDelim(simple_tokenizer *t, unsigned char c){
  return c<0x80 && t->delim[c];
}
