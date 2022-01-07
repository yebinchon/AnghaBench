
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; } ;
typedef TYPE_1__ StringBuffer ;


 int dataBufferInit (int *,int) ;
 int dataBufferReplace (int *,char*,int) ;

__attribute__((used)) static void initStringBuffer(StringBuffer *sb){
  dataBufferInit(&sb->b, 100);
  dataBufferReplace(&sb->b, "", 1);
}
