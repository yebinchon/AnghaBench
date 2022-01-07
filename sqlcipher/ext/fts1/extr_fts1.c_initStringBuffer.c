
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloced; char* s; scalar_t__ len; } ;
typedef TYPE_1__ StringBuffer ;


 char* malloc (int) ;

__attribute__((used)) static void initStringBuffer(StringBuffer *sb){
  sb->len = 0;
  sb->alloced = 100;
  sb->s = malloc(100);
  sb->s[0] = '\0';
}
